<?php
include_once 'conexao.php'; // Inclui o arquivo com a função de conexão ao banco de dados
$pdo = conexao(); // Estabelece uma conexão com o banco de dados

// Verifica se o formulário foi enviado
if (isset($_POST['enviar'])) {
    if (!empty($_POST['nome']) && isset($_POST['categoria_sub'])) {
        $nomeDaEquipe = $_POST['nome'];
        $categoriaSub = $_POST['categoria_sub'];

        // Verificar se o nome da equipe já existe no banco de dados com a mesma categoria_sub
        $sqlVerificarNome = "SELECT COUNT(*) FROM times WHERE nome = :nomeEquipe AND categoria_sub = :categoriaSub";
        $stmtVerificarNome = $pdo->prepare($sqlVerificarNome);
        $stmtVerificarNome->bindParam(':nomeEquipe', $nomeDaEquipe, PDO::PARAM_STR);
        $stmtVerificarNome->bindParam(':categoriaSub', $categoriaSub, PDO::PARAM_STR);
        $stmtVerificarNome->execute();

        $equipeExistente = $stmtVerificarNome->fetchColumn();

        if ($equipeExistente > 0) {
            header('Location: timeJaExiste.php'); // Redireciona para a página de erro se a equipe já existir
            exit();
        } else {
            // Verificar se a tabela 'times' existe no banco de dados
            $sqlCheckTable = "SHOW TABLES LIKE 'times'";
            $stmtCheckTable = $pdo->prepare($sqlCheckTable);
            $stmtCheckTable->execute();

            if ($stmtCheckTable->rowCount() == 1) {
                // A tabela 'times' existe, verifique se as colunas desejadas existem
                $desiredColumns = [
                    'modalidade', 'cpf_cnpj', 'endereco', 'cidade', 'estado', 'cep',
                    'nome_responsavel', 'celular', 'email', 'plano', 'categoria_sub'
                ];

                $missingColumns = [];

                foreach ($desiredColumns as $column) {
                    $sqlCheckColumn = "SHOW COLUMNS FROM times LIKE '$column'";
                    $stmtCheckColumn = $pdo->prepare($sqlCheckColumn);
                    $stmtCheckColumn->execute();

                    if ($stmtCheckColumn->rowCount() == 0) {
                        // A coluna não existe, adicioná-la
                        $sqlAddColumn = "ALTER TABLE times ADD COLUMN $column VARCHAR(255) NOT NULL";
                        $stmtAddColumn = $pdo->prepare($sqlAddColumn);
                        $stmtAddColumn->execute();

                        // Adicione a coluna à lista de colunas adicionadas
                        $missingColumns[] = $column;
                    }
                }

                // Recupere outros campos do formulário
                $modalidade = $_POST['modalidade'];
                $cpf_cnpj = $_POST['cpf_cnpj'];
                $endereco = $_POST['endereco'];
                $cidade = $_POST['cidade'];
                $estado = $_POST['estado'];
                $cep = $_POST['cep'];
                $nome_responsavel = $_POST['nome_responsavel'];
                $celular = $_POST['celular'];
                $email = $_POST['email'];
                $plano = isset($_POST['plano']) ? $_POST['plano'] : '';
                $categoria_sub = isset($_POST['categoria_sub']) ? $_POST['categoria_sub'] : '';

                // Verifique se algum campo obrigatório está vazio
                if (empty($modalidade) || empty($cpf_cnpj) || empty($plano)) {
                    echo "Campos obrigatórios não podem estar vazios.";
                } else {
                    // Continue com a inserção no banco de dados
                    $sqlInserir = "INSERT INTO times (nome, modalidade, cpf_cnpj, endereco, cidade, estado, cep, nome_responsavel, celular, email, plano, categoria_sub) VALUES (:nomeEquipe, :modalidade, :cpf_cnpj, :endereco, :cidade, :estado, :cep, :nome_responsavel, :celular, :email, :plano, :categoria_sub)";
                    $stmtInserir = $pdo->prepare($sqlInserir);
                    $stmtInserir->bindParam(':nomeEquipe', $nomeDaEquipe, PDO::PARAM_STR);
                    $stmtInserir->bindParam(':modalidade', $modalidade, PDO::PARAM_STR);
                    $stmtInserir->bindParam(':cpf_cnpj', $cpf_cnpj, PDO::PARAM_STR);
                    $stmtInserir->bindParam(':endereco', $endereco, PDO::PARAM_STR);
                    $stmtInserir->bindParam(':cidade', $cidade, PDO::PARAM_STR);
                    $stmtInserir->bindParam(':estado', $estado, PDO::PARAM_STR);
                    $stmtInserir->bindParam(':cep', $cep, PDO::PARAM_STR);
                    $stmtInserir->bindParam(':nome_responsavel', $nome_responsavel, PDO::PARAM_STR);
                    $stmtInserir->bindParam(':celular', $celular, PDO::PARAM_STR);
                    $stmtInserir->bindParam(':email', $email, PDO::PARAM_STR);
                    $stmtInserir->bindParam(':plano', $plano, PDO::PARAM_STR);
                    $stmtInserir->bindParam(':categoria_sub', $categoria_sub, PDO::PARAM_STR);

                    if ($stmtInserir->execute()) {
                        // Inserção bem-sucedida, agora insira as categorias sub selecionadas
                        $idTimeInserido = $pdo->lastInsertId(); // Obtém o ID da equipe inserida
                        foreach ($categoria_sub as $categoria) {
                            $sqlInserirCategoria = "INSERT INTO categorias_sub (id_time, categoria) VALUES (:id_time, :categoria)";
                            $stmtInserirCategoria = $pdo->prepare($sqlInserirCategoria);
                            $stmtInserirCategoria->bindParam(':id_time', $idTimeInserido, PDO::PARAM_INT);
                            $stmtInserirCategoria->bindParam(':categoria', $categoria, PDO::PARAM_STR);
                            $stmtInserirCategoria->execute();
                        }

                        // Realizar o envio de e-mail aqui
                        $modalidade = $_POST['modalidade'];
                        $nome = $_POST['nome'];
                        $cpf_cnpj = $_POST['cpf_cnpj'];
                        $endereco = $_POST['endereco'];
                        $cidade = $_POST['cidade'];
                        $estado = $_POST['estado'];
                        $cep = $_POST['cep'];
                        $nome_responsavel = $_POST['nome_responsavel'];
                        $celular = $_POST['celular'];
                        $email = $_POST['email'];
                        $plano = $_POST['plano'];
                        $categoria_sub = $_POST['categoria_sub'];
                        $aceiteRegulamento = $_POST['aceiteRegulamento'];
                        $data_envio = date('d/m/Y');
                        $hora_envio = date('H:i:s');

                          $arquivo = "<html>
                                        <head>
                                            <title>$assunto</title>
                                        </head>
                                        <body>
                                            <p><b>Modalidade: </b>$modalidade</p>  
                                            <p><b>Nome: </b>$nome</p>
                                            <p><b>CPF/CNPJ: </b>$cpf_cnpj</p>
                                            <p><b>Endereço: </b>$endereco</p>
                                            <p><b>Cidade: </b>$cidade</p>
                                            <p><b>Estado: </b>$estado</p>
                                            <p><b>CEP: </b>$cep</p>
                                            <p><b>Nome do Responsável: </b>$nome_responsavel</p>
                                            <p><b>Celular: </b>$celular</p>
                                            <p><b>E-mail: </b>$email</p>
                                            <p><b>Plano:  </b>$plano</p>
                                            <p><b>Categoria: </b>$categoria_sub</p>
                                            <p><b>Aceite do Regulamento </b>$aceiteRegulamento</p>
                                            <p>Este e-mail foi enviado em <b>$data_envio</b> às <b>$hora_envio</b></p>
                                            </body>
                                    </html>";

                        // Emails para quem será enviado o formulário
                        $destino = "pauloclamberti@gmail.com";
                        $assunto = "Inscrição Brazil Cup";

                        // Este sempre deverá existir para garantir a exibição correta dos caracteres
                        $headers  = "MIME-Version: 1.0\n";
                        $headers .= "Content-type: text/html; charset=iso-8859-1\n";
                        $headers .= "From: $nome <$email>";

                        // Enviar
                        $enviado = mail($destino, $assunto, $arquivo, $headers);

                        if ($enviado) {
                            header('Location: index.php'); // Redirecionar para index.php após a inserção bem-sucedida
                            exit;
                            echo '<script>alert("Formulário enviado com sucesso!");</script>';
                            
                            // E-mail enviado com sucesso
                        } else {
                            // Erro no envio do e-mail
                            echo '<script>alert("Erro ao enviar o e-mail.");</script>';
                        }
                        
                    } else {
                        echo "Ocorreu um erro ao inserir a equipe no banco de dados.";
                    }
                }
            } else {
                echo "A tabela 'times' não existe no banco de dados.";
            }
        }
    } else {
        echo "Por favor, forneça o nome da equipe e pelo menos uma categoria_sub.";
    }
}
?>
