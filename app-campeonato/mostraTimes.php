<?php
include_once 'conexao.php'; 


function mostrarTabela($pdo, $timeA, $timeB) {
    try {
        $tabelaNome = $timeA . '_x_' . $timeB;
       
        $sql = "SELECT * FROM $tabelaNome";
        $stmt = $pdo->prepare($sql);
        $stmt->execute();
        $resultados = $stmt->fetchAll(PDO::FETCH_ASSOC);
        
        echo "<h1>Tabela $tabelaNome</h1>";
        echo "<table border='1'>";
        echo "<tr><th>ID</th><th>timeA_id</th><th>timeB_id</th></tr>";
        foreach ($resultados as $resultado) {
            echo "<tr>";
            echo "<td>" . $resultado['id'] . "</td>";
            echo "<td>" . $resultado['timeA_id'] . "</td>";
            echo "<td>" . $resultado['timeB_id'] . "</td>";
            echo "</tr>";
        }
        echo "</table>";
    } catch (PDOException $e) {
        echo "Erro ao recuperar dados da tabela: " . $e->getMessage();
    }
}

if ($_SERVER["REQUEST_METHOD"] == "GET") {
    if (isset($_GET["timeA"]) && isset($_GET["timeB"])) {
        $timeA = $_GET["timeA"];
        $timeB = $_GET["timeB"];
        
        $pdo = conexao(); 
        
        
        mostrarTabela($pdo, $timeA, $timeB);
    } else {
        echo "Por favor, forneça os nomes dos times (timeA e timeB) na URL.";
    }
}
?>
