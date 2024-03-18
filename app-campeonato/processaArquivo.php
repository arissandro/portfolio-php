<?php
include_once "conexao.php";

$pdo = conexao();
function createTableIfNotExists($pdo) {
    $createTableSQL = "CREATE TABLE IF NOT EXISTS relacao_nominal (
        id INT AUTO_INCREMENT PRIMARY KEY,
        nome_equipe VARCHAR(255),
        categoria VARCHAR(255),
        nome_completo VARCHAR(255),
        nome_mae VARCHAR(255),
        rg VARCHAR(20),
        data_nascimento DATE,
        nome_comissao_tecnica VARCHAR(255),
        cargo_comissao_tecnica VARCHAR(255),
        rg_comissao_tecnica VARCHAR(20)
    )";
    $pdo->exec($createTableSQL);
}


$linhas_importadas = 0;
$linhas_nao_importadas = 0;
$mensagem_importacao = "";

if ($_SERVER["REQUEST_METHOD"] == "POST" && isset($_POST['importar'])) {
    try {
        createTableIfNotExists($pdo);

        $handle = fopen($_FILES['arquivo']['tmp_name'], 'r');

        $linha_atual = 0;
        $importando_dados_jogadores = false;
        $importando_dados_comissao_tecnica = false;
        $colunas_comissao_tecnica = array();

        while (($data = fgetcsv($handle, 1000, ";")) !== FALSE) {
            $linha_atual++;

            if ($data[0] == "COMISSÃO TÉCNICA") {
                $importando_dados_jogadores = false;
                $importando_dados_comissao_tecnica = true;
                $colunas_comissao_tecnica = $data;
                continue;
            }

            if ($linha_atual == 4) {
                $nome_equipe = $data[0];
                $categoria = $data[4];
            }

            if (empty($data[1]) || $data[1] == "ATLETAS" || $data[1] == "Nome Completo" || $data[1] == "Nome da Mãe") {
                continue;
            }

            if ($data[1] != "COMISSÃO TÉCNICA") {
                $importando_dados_jogadores = true;
                $importando_dados_comissao_tecnica = false;
            }

            if ($importando_dados_jogadores) {
                $nome_completo = $data[1];
                $nome_mae = $data[2];
                $rg = $data[3];
                $data_nascimento = date("Y-m-d", strtotime($data[4]));

                $sql = "INSERT INTO relacao_nominal (nome_equipe, categoria, nome_completo, nome_mae, rg, data_nascimento) VALUES (:nome_equipe, :categoria, :nome_completo, :nome_mae, :rg, :data_nascimento)";
                $stmt = $pdo->prepare($sql);

                $stmt->bindParam(':nome_equipe', $nome_equipe);
                $stmt->bindParam(':categoria', $categoria);
                $stmt->bindParam(':nome_completo', $nome_completo);
                $stmt->bindParam(':nome_mae', $nome_mae);
                $stmt->bindParam(':rg', $rg);
                $stmt->bindParam(':data_nascimento', $data_nascimento);

                if ($stmt->execute()) {
                    $linhas_importadas++;
                } else {
                    $linhas_nao_importadas++;
                }
            }

            if ($importando_dados_comissao_tecnica) {
                $nome_comissao_tecnica = $data[0];
                $cargo_comissao_tecnica = $data[1];
                $rg_comissao_tecnica = $data[2];

                $sql = "INSERT INTO relacao_nominal (nome_equipe, categoria, nome_comissao_tecnica, cargo_comissao_tecnica, rg_comissao_tecnica) VALUES (:nome_equipe, :categoria, :nome_comissao_tecnica, :cargo_comissao_tecnica, :rg_comissao_tecnica)";
                $stmt = $pdo->prepare($sql);

                $stmt->bindParam(':nome_equipe', $nome_equipe);
                $stmt->bindParam(':categoria', $categoria);
                $stmt->bindParam(':nome_comissao_tecnica', $nome_comissao_tecnica);
                $stmt->bindParam(':cargo_comissao_tecnica', $cargo_comissao_tecnica);
                $stmt->bindParam(':rg_comissao_tecnica', $rg_comissao_tecnica);

                if ($stmt->execute()) {
                    $linhas_importadas++;
                } else {
                    $linhas_nao_importadas++;
                }
            }
        }

        fclose($handle);

        $deleteSQL = "DELETE FROM relacao_nominal ORDER BY id DESC LIMIT 2";
        $pdo->exec($deleteSQL);

        $mensagem_importacao = "$linhas_importadas Linhas Importadas. $linhas_nao_importadas Linhas Não Importadas.";
    } catch (Exception $e) {
        $mensagem_importacao = "Erro: " . $e->getMessage();
    }
}
?>

<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="processaArquivo.css">
    <title>Importar CSV</title>
</head>
<body>
<header class='cabecalho'>
        <h1 class='titulo'>Sistema Esportivo</h1>
    </header>

    <form method="POST" enctype="multipart/form-data">
        <h2 class="subtitulo">Selecione o arquivo CSV:</h2> 
        <div class="form-container">
                <label for="arquivo" class="import-legenda">Arquivo</label>
                <input type="file" accept=".csv" name="arquivo" id="arquivo" class="input-arquivo">
            <div class="btn-container">
                <input type="submit" name="importar" value="Importar" class="btn">
                <a class="btn btn-cancelar" href="index.php">Cancelar</a>
            </div>
        </div>
    </form>

    <?php
    if (!empty($mensagem_importacao)) {
        echo "<p>$mensagem_importacao</p>";
    }
    ?>
    <footer class="rodape">
        <p class="rodape-texto">&copy; 2023 WebTech6</p>
        <!--Desenvolvido por Arissandro Sousa-->
    </footer>
</body>
</html>

