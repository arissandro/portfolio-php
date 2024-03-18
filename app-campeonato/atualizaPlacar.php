<?php
include_once 'conexao.php';

function atualizarPlacarNoBancoDeDados($pdo, $tableName, $golsTimeA, $golsTimeB) {
    try {
        $sql = "UPDATE $tableName SET gols_timeA = :golsTimeA, gols_timeB = :golsTimeB";
        $stmt = $pdo->prepare($sql);
        $stmt->bindParam(':golsTimeA', $golsTimeA, PDO::PARAM_INT);
        $stmt->bindParam(':golsTimeB', $golsTimeB, PDO::PARAM_INT);

        if ($stmt->execute()) {
            echo "Placar atualizado no banco de dados com sucesso.";
        } else {
            echo "Erro ao atualizar o placar no banco de dados.";
        }
    } catch (PDOException $e) {
        echo "Erro ao atualizar o placar: " . $e->getMessage();
    }
}

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $pdo = conexao();
    $tableName = $_POST['tabela'];
    $golsTimeA = $_POST['golsTimeA'];
    $golsTimeB = $_POST['golsTimeB'];

    atualizarPlacarNoBancoDeDados($pdo, $tableName, $golsTimeA, $golsTimeB);
}
?>
