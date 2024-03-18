<?php
include_once 'conexao.php';
$pdo = conexao(); 

$offset = isset($_GET['offset']) ? intval($_GET['offset']) : 0;
$limit = isset($_GET['limit']) ? intval($_GET['limit']) : 7;

try {
   
    $sql = "SELECT nome, categoria_sub FROM times LIMIT $limit OFFSET $offset";
    $stmt = $pdo->query($sql);
    $equipesCategorias = $stmt->fetchAll(PDO::FETCH_ASSOC);

    foreach ($equipesCategorias as $equipeCategoria) {
        $nomeEquipe = $equipeCategoria['nome'];
        $categoria = $equipeCategoria['categoria_sub'];

        echo "<p class='equipe' data-categoria='" . htmlspecialchars($categoria) . "'>Equipe: " . htmlspecialchars($nomeEquipe) . " - Categoria: " . htmlspecialchars($categoria) . "</p>";
    }
} catch (PDOException $e) {
    echo "Erro ao listar equipes: " . $e->getMessage();
}
?>
