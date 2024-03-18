<?php
include_once 'conexao.php';

error_reporting(E_ALL);
ini_set('display_errors', 0);

try {
    $pdo = conexao();
} catch (PDOException $e) {
    echo "Erro de conexão com o banco de dados: " . $e->getMessage();
    exit();
}

try {
    $sql = "SHOW TABLES LIKE '%_x_%'";
    $stmt = $pdo->prepare($sql);
    $stmt->execute();
    $tabelasEncontradas = $stmt->fetchAll(PDO::FETCH_COLUMN);
} catch (PDOException $e) {
    echo "Erro na consulta SQL: " . $e->getMessage();
    exit();
}

$resultados = array();
$somasGols = array();
$somasCartoesAmarelos = array();
$somasCartoesVermelhos = array();

foreach ($tabelasEncontradas as $tabela) {
    $nomesTimes = explode("_x_", $tabela);
    if (count($nomesTimes) == 2) {
        $timeA = $nomesTimes[0];
        $timeB = $nomesTimes[1];

        try {
            $sql = "SELECT
                        SUM(gols_$timeA) AS gols_$timeA,
                        SUM(cartao_amarelo_$timeA) AS cartao_amarelo_$timeA,
                        SUM(cartao_vermelho_$timeA) AS cartao_vermelho_$timeA,
                        SUM(gols_$timeB) AS gols_$timeB,
                        SUM(cartao_amarelo_$timeB) AS cartao_amarelo_$timeB,
                        SUM(cartao_vermelho_$timeB) AS cartao_vermelho_$timeB
                    FROM $tabela";
            $stmt = $pdo->prepare($sql);
            $stmt->execute();
            $resultadoTabela = $stmt->fetch(PDO::FETCH_ASSOC);

            $somasGols[$timeA] += $resultadoTabela["gols_$timeA"];
            $somasGols[$timeB] += $resultadoTabela["gols_$timeB"];
            $somasCartoesAmarelos[$timeA] += $resultadoTabela["cartao_amarelo_$timeA"];
            $somasCartoesAmarelos[$timeB] += $resultadoTabela["cartao_amarelo_$timeB"];
            $somasCartoesVermelhos[$timeA] += $resultadoTabela["cartao_vermelho_$timeA"];
            $somasCartoesVermelhos[$timeB] += $resultadoTabela["cartao_vermelho_$timeB"];
        } catch (PDOException $e) {
            echo "Erro na consulta SQL: " . $e->getMessage();
        }
    }
}
?>
<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="estatistica.css">
    <title>Estatísticas</title>
</head>

<body>
    <header class="cabecalho">
        <h1 class="titulo">Estatísticas das Equipes</h1>
    </header>
    <div class="equipes-container">
        <ul class="lista">
            <?php foreach ($somasGols as $equipe => $somaGols) : ?>
                <div class="estatisticas-container">
                    <span class="equipe">
                        <?php echo $equipe; ?>:
                    </span>
                    <li class="lista-item">
                        <span class="lista-item-gol">
                            Gols: <?php echo $somaGols; ?> |
                        </span>
                        <span class="lista-item-cartao">
                            Amarelos: <?php echo $somasCartoesAmarelos[$equipe]; ?> |
                        </span>
                        <span class="lista-item-cartao">
                            Vermelhos: <?php echo $somasCartoesVermelhos[$equipe]; ?>
                        </span>
                    </li>
                </div>

            <?php endforeach; ?>
        </ul>
    </div>
    <div class="btn-container">
        <a class="btn btn-cancelar" href="index.php">Voltar</a>
    </div>
    <footer class="rodape">
        <p class="rodape-texto">&copy; 2023 WebTech6</p>
        <!--Desenvolvido por Arissandro Sousa-->
    </footer>
</body>

</html>