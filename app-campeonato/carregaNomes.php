<?php
include_once 'conexao.php'; // Inclua o arquivo com a função de conexão

function obterNomesCompletosPorEquipe($pdo, $nomeTime) {
    // Consulta SQL para selecionar os nomes completos da equipe
    $sql = "SELECT nome_completo FROM relacao_nominal WHERE nome_equipe = :nome_equipe";

    try {
        $stmt = $pdo->prepare($sql);
        $stmt->bindParam(':nome_equipe', $nomeTime, PDO::PARAM_STR);
        $stmt->execute();

        // Inicialize um array para armazenar os nomes completos
        $nomesCompletos = array();

        // Itere sobre os resultados e adicione os nomes completos ao array
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $nomesCompletos[] = $row['nome_completo'];
        }

        // Retorne o array de nomes completos
        return $nomesCompletos;
    } catch (PDOException $e) {
        echo "Erro ao obter nomes completos: " . $e->getMessage();
        return array(); // Em caso de erro, retorne um array vazio
    }
}

// Exemplo de uso da função
$pdo = conexao();
$nomeTime = "TimeA"; // Substitua pelo nome do time desejado
$nomesCompletos = obterNomesCompletosPorEquipe($pdo, $nomeTime);

if (!empty($nomesCompletos)) {
    echo "Nomes completos da equipe '$nomeTime':<br>";
    foreach ($nomesCompletos as $nomeCompleto) {
        echo $nomeCompleto . "<br>";
    }
} else {
    echo "Nenhum nome completo encontrado para a equipe '$nomeTime'.";
}
?>
