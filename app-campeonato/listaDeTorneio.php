<?php
include "conexao.php";
$pdo = conexao();

// Função para listar os nomes dos torneios a partir das tabelas existentes
function listarTorneios($pdo)
{
    try {
        // Consulta para obter todas as tabelas no banco de dados
        $sql = "SHOW TABLES";
        $stmt = $pdo->query($sql);
        $tabelas = $stmt->fetchAll(PDO::FETCH_COLUMN);

        $torneios = [];
        foreach ($tabelas as $tabela) {
            if (strpos($tabela, 'torneio_') === 0) {
                $nomeTorneio = substr($tabela, strlen('Torneio_'));
                $torneios[] = $nomeTorneio;
            }
        }

        return $torneios;
    } catch (PDOException $e) {
        echo "Erro ao listar torneios: " . $e->getMessage();
    }
}
?>

<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="lista-torneios.css">
    <title>Lista de Torneios</title>

    <style>
        .torneio {
            flex: 1;
            background-color: var(--cor-btn);
            border: 1px solid var(--cor-primaria);
            color: var(--cor-primaria);
            font-family: var(--font-family-texto);
            font-size: var(--font-size-texto);
            padding: 10px;
            text-align: center;
            text-decoration: none;
            transition: color 0.3s, border 0.3s;
            margin: 10px 10px;
            border-radius: 3px;
            width: 30%;
        }

        .torneio:hover {
            color: var(--cor-btn-hover);
            border: 1px solid var(--cor-btn-hover);
            cursor: pointer;
        }
    </style>
</head>

<body>
    <header class='cabecalho'>
        <h1 class='titulo'>Lista de Campeonatos</h1>
    </header>

    <div class='torneio-container'>
        <?php
        $tabelas = listarTorneios($pdo);
        foreach ($tabelas as $nomeTorneio) {
            $nomeFormatado = str_replace('_', ' ', $nomeTorneio);
            echo "<button class='torneio' onclick='selecionarTorneio(\"$nomeTorneio\")'>$nomeFormatado</button>";
        }
        ?>
    </div>
    <div class="btn-container">
                <a class="btn btn-cancelar" href="index.php">Voltar</a>
    </div>
    <footer class="rodape">
        <p class="rodape-texto">&copy; 2023 WebTech6</p>
        <!--Desenvolvido por Arissandro Sousa-->
    </footer>


    <script>
        function selecionarTorneio(nomeTorneio) {
            var form = document.createElement("form");
            form.method = "post";
            form.action = "inserirTimes.php";

            var input = document.createElement("input");
            input.type = "hidden";
            input.name = "nomeTorneio";
            input.value = nomeTorneio;

            form.appendChild(input);
            document.body.appendChild(form);

            form.submit();
        }
    </script>
</body>

</html>