<?php
include_once 'conexao.php'; // Inclua o arquivo com a função de conexão

$pdo = conexao();

$nomeTorneio = isset($_POST['nomeTorneio']) ? $_POST['nomeTorneio'] : '';
$categoria = ''; // Inicializa $categoria

// Função para listar todas as categorias com base no nome do torneio
function listarTodasAsCategorias($pdo, $nomeTorneio)
{
    try {
        // Encontre a parte "sub_?" no nome do torneio
        preg_match('/sub_(\d+)/', $nomeTorneio, $matches);

        if (isset($matches[1])) {
            $categoriaSub = 'sub ' . $matches[1]; // Crie a categoria correspondente
            $sql = "SELECT DISTINCT categoria_sub FROM times WHERE categoria_sub = ?";
            $stmt = $pdo->prepare($sql);
            $stmt->execute([$categoriaSub]);
            $categorias = $stmt->fetchAll(PDO::FETCH_COLUMN);
            return $categorias;
        } else {
            return array();
        }
    } catch (PDOException $e) {
        echo "Erro ao listar categorias: " . $e->getMessage();
        return array();
    }
}

// Função para listar todos os times da tabela "times" com suas categorias, excluindo os times já salvos no torneio
function listarTimesPorCategoria($pdo, $nomeTorneio, $categoria, $timesSalvos)
{
    try {
        // Encontre a parte "sub_?" no nome do torneio
        preg_match('/sub_(\d+)/', $nomeTorneio, $matches);

        if (isset($matches[1])) {
            $categoriaSub = 'sub ' . $matches[1]; // Crie a categoria correspondente
            $sql = "SELECT DISTINCT nome, categoria_sub FROM times WHERE categoria_sub = ?";
            $stmt = $pdo->prepare($sql);
            $stmt->execute([$categoriaSub]);
            $times = $stmt->fetchAll(PDO::FETCH_ASSOC);

            // Filtra os times já salvos no torneio
            $timesFiltrados = array_filter($times, function ($time) use ($timesSalvos) {
                return !in_array($time, $timesSalvos);
            });

            return $timesFiltrados;
        } else {
            return array();
        }
    } catch (PDOException $e) {
        echo "Erro ao listar times: " . $e->getMessage();
        return array();
    }
}



// Função para listar os times já salvos na tabela do torneio
function listarTimesSalvosNoTorneio($pdo, $nomeTorneio)
{
    try {
        $sql = "SELECT nome_do_time, categoria_sub FROM Torneio_$nomeTorneio";
        $stmt = $pdo->query($sql);
        $times = $stmt->fetchAll(PDO::FETCH_ASSOC);
        return $times;
    } catch (PDOException $e) {
        echo "Erro ao listar times salvos no torneio: " . $e->getMessage();
        return array();
    }
}

// Função para salvar os times na tabela do torneio, evitando duplicatas
function salvarTimesNoTorneio($pdo, $nomeTorneio, $times)
{
    try {
        if (!empty($times)) {
            $params = implode(', ', array_fill(0, count($times), '(?, ?)'));
            $sql = "INSERT INTO Torneio_$nomeTorneio (nome_do_time, categoria_sub) VALUES $params";
            $stmt = $pdo->prepare($sql);

            $values = [];
            foreach ($times as $time) {
                // Verifica se o time já existe no torneio
                $sqlCheck = "SELECT COUNT(*) FROM Torneio_$nomeTorneio WHERE nome_do_time = ? AND categoria_sub = ?";
                $stmtCheck = $pdo->prepare($sqlCheck);
                $stmtCheck->execute([$time['nome'], $time['categoria_sub']]);
                $count = $stmtCheck->fetchColumn();

                if ($count == 0) {
                    $values[] = $time['nome'];
                    $values[] = $time['categoria_sub'];
                }
            }

            if (!empty($values)) {
                $stmt->execute($values);
                echo "Times salvos com sucesso no torneio $nomeTorneio!";
            } else {
                header("Location: timeJaEstaNoTorneio.php");
                exit();
            }
        } else {
            echo "Nenhum time foi selecionado para o torneio.";
        }
    } catch (PDOException $e) {
        echo "Erro ao salvar times no torneio: " . $e->getMessage();
    }
}

$timesSalvos = listarTimesSalvosNoTorneio($pdo, $nomeTorneio);

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST['selectedTimes']) && !empty($nomeTorneio) && isset($_POST['categoria_sub'])) {
        $selectedTimes = $_POST['selectedTimes'];
        $categoria = $_POST['categoria_sub'];
        $times = listarTimesPorCategoria($pdo, $nomeTorneio, $categoria, $timesSalvos);
        salvarTimesNoTorneio($pdo, $nomeTorneio, $times);
    }
}

$timesCategoria = listarTimesPorCategoria($pdo, $nomeTorneio, $categoria, $timesSalvos);
$categorias = listarTodasAsCategorias($pdo, $nomeTorneio);
?>




<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <script src="filtrar.js"></script>
    <link rel="stylesheet" href="teste.css">
    <title>Salvar Times em Torneio</title>
</head>

<body>

    <header class='cabecalho'>
        <h1 class='titulo'>Salvar Times em Torneio</h1>
    </header>

    <form method="post" action="">
        <div class="categoria-container">

            <input type="hidden" name="nomeTorneio" value="<?php echo htmlspecialchars($nomeTorneio); ?>">
            <h2 class="subtitulo">Selecione a categoria: <?php echo htmlspecialchars($categoria); ?></h2>
            <select name="categoria_sub" class="categortia-select">
                <?php
                foreach ($categorias as $cat) {
                    echo "<option value='{$cat}'>{$cat}</option>";
                }
                ?>
            </select>
        </div>
        <div class="container">

        <div class="times-container">
    <h3 class="descricao">Selecione os times para adicionar ao torneio:</h3>
    <span class="nome-torneio">
        <?php echo htmlspecialchars($nomeTorneio); ?>
    </span>
    <select name="selectedTimes[]" multiple class="times" id="selectedTimes">
        <?php
        foreach ($timesCategoria as $time) {
            echo "<option value='{$time['nome']}'>{$time['nome']}</option>";
        }
        ?>
    </select>
</div>
            <div class="times-existentes-container">
                <h3 class="descricao">Times já salvos no torneio:</h3>
                <span class="nome-torneio">
                    <?php echo htmlspecialchars($nomeTorneio); ?>
                </span>
                <ul class="lista-times">
                    <?php
                    foreach ($timesSalvos as $time) {
                        echo "<li>{$time['nome_do_time']} - {$time['categoria_sub']}</li>";
                    }
                    ?>
                </ul>
            </div>

        </div>
        <div class="btn-container">
            <button class="btn" type="submit">Salvar Time</button>
            <a class="btn btn-cancelar" href="index.php">Cancelar</a>
        </div>
    </form>
    <footer class="rodape">
        <p class="rodape-texto">&copy; 2023 WebTech6</p>
        <!--Desenvolvido por Arissandro Sousa-->
    </footer>

    <script>
    document.getElementById('selectedTimes').addEventListener('change', function(event) {
        var selectedOptions = event.target.selectedOptions;
        for (var i = 0; i < selectedOptions.length; i++) {
            selectedOptions[i].classList.toggle('selected');
        }
    });
</script>
</body>

</html>