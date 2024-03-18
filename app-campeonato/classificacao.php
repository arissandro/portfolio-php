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
$pontos = array();
$vitorias = array();
$derrotas = array();
$empates = array();

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
                        SUM(cartao_vermelho_$timeB) AS cartao_vermelho_$timeB,
                        SUM(vitoria_$timeA) AS vitoria_$timeA,
                        SUM(derrota_$timeA) AS derrota_$timeA,
                        SUM(empate) AS empate,
                        SUM(vitoria_$timeB) AS vitoria_$timeB,
                        SUM(derrota_$timeB) AS derrota_$timeB
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

            $pontos[$timeA] += $resultadoTabela["vitoria_$timeA"] + $resultadoTabela["empate"];
            $pontos[$timeB] += $resultadoTabela["vitoria_$timeB"] + $resultadoTabela["empate"];

            $vitorias[$timeA] += ($resultadoTabela["vitoria_$timeA"] > 0) ? 1 : 0;
            $vitorias[$timeB] += ($resultadoTabela["vitoria_$timeB"] > 0) ? 1 : 0;
            $derrotas[$timeA] += ($resultadoTabela["derrota_$timeA"] > 0) ? 1 : 0;
            $derrotas[$timeB] += ($resultadoTabela["derrota_$timeB"] > 0) ? 1 : 0;
            $empates[$timeA] += $resultadoTabela["empate"];
            $empates[$timeB] += $resultadoTabela["empate"];
        } catch (PDOException $e) {
            echo "Erro na consulta SQL: " . $e->getMessage();
        }
    }
}

// Função para ordenar as equipes com base nos pontos e no saldo de gols
function compararEquipes($a, $b) {
    global $pontos, $somasGols;

    if ($pontos[$a] == $pontos[$b]) {
        return $somasGols[$b] - $somasGols[$a];
    }

    return $pontos[$b] - $pontos[$a];
}

// Ordenar as equipes
uksort($pontos, 'compararEquipes');
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="classificacao.css">
    <title>Estatísticas</title>
</head>

<body>
    <header class="cabecalho">
        <h1 class="titulo">Estatísticas das Equipes</h1>
    </header>
    <div class="equipes-container">
        <ul class="lista">
            <?php foreach ($pontos as $equipe => $ponto) : ?>
                <div class="classificacao-container">
                    <span class="equipe">
                        <?php echo $equipe; ?>:
                    </span>
                    <li class="lista-item">
                        <span class="estatisticas">
                            <span class="lista-item-gol">
                                Gols: <?php echo $somasGols[$equipe]; ?> |
                            </span>
                            <span class="lista-item-cartao">
                                Amarelos: <?php echo $somasCartoesAmarelos[$equipe]; ?> |
                            </span>
                            <span class="lista-item-cartao">
                                Vermelhos: <?php echo $somasCartoesVermelhos[$equipe]; ?> |
                            </span>
                            <span class="lista-item-vitoria">
                                Vitórias: <?php echo $vitorias[$equipe]; ?> |
                            </span>
                            <span class="lista-item-derrota">
                                Derrotas: <?php echo $derrotas[$equipe]; ?> |
                            </span>
                            <span class="lista-item-empate">
                                Empates: <?php echo $empates[$equipe]; ?> |
                            </span>
                            <span class="lista-item-pontos">
                                Pontos: <?php echo $pontos[$equipe]; ?>
                            </span>
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
