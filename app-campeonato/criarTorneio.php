<?php
include 'conexao.php'; 

$pdo = conexao();

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['acao']) && $_POST['acao'] === "criarTorneio") {
    $nomeTorneio = $_POST['nome_do_torneio'];
    $categoria = $_POST['categoria'];
    
    if (!empty($nomeTorneio)) {
        try {
            // Substitua espaços e caracteres especiais no nome do torneio e categoria
            $nomeTorneio = preg_replace('/\s+/', '_', $nomeTorneio);
            $nomeTorneio = preg_replace('/[^\w-]/', '', $nomeTorneio);
            $categoria = preg_replace('/\s+/', '_', $categoria);
            $categoria = preg_replace('/[^\w-]/', '', $categoria);
            
            // Crie a consulta SQL para criar a tabela com uma coluna para o nome do time
            $tabelaNome = "Torneio_" . $nomeTorneio . "_" . $categoria;
            $sql = "CREATE TABLE IF NOT EXISTS $tabelaNome (
                id INT AUTO_INCREMENT PRIMARY KEY,
                nome_do_time VARCHAR(255) NOT NULL,
                categoria_sub VARCHAR(255) NOT NULL
            )";

            // Executa a consulta SQL
            $pdo->exec($sql);

            // Redirecione para listaDeTorneio.php após a criação da tabela
            header("Location: listaDeTorneio.php");
            exit; // Encerre o script para evitar qualquer saída adicional
        } catch (PDOException $e) {
            echo "Erro ao criar a tabela do torneio: " . $e->getMessage();
        }
    } else {
        echo "O nome do torneio não pode ser vazio.";
    }
}

?>
