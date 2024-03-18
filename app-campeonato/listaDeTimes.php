<?php
include_once 'conexao.php';
$pdo = conexao();

try {
    $sql = "SELECT id, nome FROM times";
    $stmt = $pdo->query($sql);
    $times = $stmt->fetchAll(PDO::FETCH_ASSOC);

} catch (PDOException $e) {
    echo "Erro ao listar times: " . $e->getMessage();
}
?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="lista-times.css">
    <title>Lista de Equipes</title>
</head>

<body>
    <header class='cabecalho'>
        <h1 class='titulo'>Lista de Times</h1>
    </header>

    <form method="post" action="criarSumula.php">
        <div class="form-container">

            <div class='select-container'>
                <?php foreach (['timeA', 'timeB'] as $time) { ?>
                    <div class='select-times'>
                        <label for='<?php echo $time ?>' class='select-legenda'>Selecione o Time:</label>
                        <select name='<?php echo $time ?>' class='select' multiple>
                            <?php foreach ($times as $opcao) { ?>
                                <option class='select-value' onclick='toggleSelection(this)' value='<?php echo $opcao['nome'] ?>'><?php echo $opcao['nome'] ?></option>
                            <?php } ?>
                        </select>
                    </div>
                <?php } ?>
            </div>

            <div class="btn-container">
                <button class="btn" type="submit">Criar</button>
                <a class="btn btn-cancelar" href="index.php">Cancelar</a>
            </div>
        </div>
    </form>
    <footer class="rodape">
        <p class="rodape-texto">&copy; 2023 WebTech6</p>
        <!--Desenvolvido por Arissandro Sousa-->
    </footer>

    <?php
    if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['timeA']) && isset($_POST['timeB'])) {
        $time1 = $_POST['timeA'];
        $time2 = $_POST['timeB'];

        echo "Você selecionou os times: $time1 e $time2";
    } else {
       
    }
    ?>

<script>
        function toggleSelection(element) {
            element.classList.toggle('selected');
        }
    </script>

</body>

</html>
