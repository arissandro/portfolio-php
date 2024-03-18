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

if ($_POST['action'] === 'salvarSumula') {
    try {
        $dataPartida = $_POST['data_partida'];
        $observacoes = $_POST['observacoes'];
        $estatusDaPartida = 'finalizado';
        $tabela = $_POST['tabela'];

        $nomeTimeVitoria = $_POST['vitoria'];
        $nomeTimeDerrota = $_POST['derrota'];

        if (!empty($nomeTimeVitoria) && !empty($nomeTimeDerrota)) {
            // Caso de vitória e derrota
            list($tipoResultadoVitoria, $nomeTimeVitoria) = explode('_', $nomeTimeVitoria);
            $colunaVitoria = $tipoResultadoVitoria . '_' . $nomeTimeVitoria;

            list($tipoResultadoDerrota, $nomeTimeDerrota) = explode('_', $nomeTimeDerrota);
            $colunaDerrota = $tipoResultadoDerrota . '_' . $nomeTimeDerrota;

            $sql = "INSERT INTO $tabela (data_partida, estatus_da_partida, observacoes, $colunaVitoria, $colunaDerrota, empate) 
                    VALUES (:data_partida, :estatusDaPartida, :observacoes, :valorVitoria, :valorDerrota, 0)";
        } else {
            // Caso de empate
            $empate = 1; // Define empate como 1

            $sql = "INSERT INTO $tabela (data_partida, estatus_da_partida, observacoes, empate) 
                    VALUES (:data_partida, :estatusDaPartida, :observacoes, :valorEmpate)";
        }

        $stmt = $pdo->prepare($sql);
        $stmt->bindParam(':data_partida', $dataPartida, PDO::PARAM_STR);
        $stmt->bindParam(':estatusDaPartida', $estatusDaPartida, PDO::PARAM_STR);
        $stmt->bindParam(':observacoes', $observacoes, PDO::PARAM_STR);

        if (!empty($nomeTimeVitoria) && !empty($nomeTimeDerrota)) {
            $stmt->bindValue(':valorVitoria', 3, PDO::PARAM_INT);
            $stmt->bindValue(':valorDerrota', 0, PDO::PARAM_INT);
        } else {
            $stmt->bindValue(':valorEmpate', $empate, PDO::PARAM_INT);
        }

        if ($stmt->execute()) {
            echo "Súmula salva com sucesso.";
        } else {
            echo "Erro ao salvar a súmula.";
            error_log("Erro ao salvar a súmula no banco de dados.");
        }
    } catch (PDOException $e) {
        echo "Erro ao salvar a súmula: " . $e->getMessage();
        error_log("Erro ao salvar a súmula: " . $e->getMessage());
        error_log('SQL a ser executado: ' . $sql);
    }
}
?>
