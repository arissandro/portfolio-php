<?php

include_once 'conexao.php';

function criarTabelaSeNaoExistir($pdo, $tableName, $colunasTimeA, $colunasTimeB)
{
    $sqlVerificarTabela = "SHOW TABLES LIKE :table_name";
    $stmtVerificarTabela = $pdo->prepare($sqlVerificarTabela);
    $stmtVerificarTabela->bindParam(':table_name', $tableName, PDO::PARAM_STR);
    $stmtVerificarTabela->execute();

    if ($stmtVerificarTabela->rowCount() === 0) {
        $colunas = implode(", ", array_merge($colunasTimeA, $colunasTimeB));

        $sql = "CREATE TABLE $tableName (
    id INT AUTO_INCREMENT PRIMARY KEY,
    data_partida DATE,
    $colunas,
    cumprimento_entre_equipes VARCHAR(255),
    relatorio_arbitro TEXT,
    observacoes TEXT,
    estatus_da_partida VARCHAR(255),
    empate INT
    
)";

        try {
            $stmt = $pdo->prepare($sql);
            $stmt->execute();
        } catch (PDOException $e) {
            echo "Erro ao criar a tabela: " . $e->getMessage();
        }
    }
}



function obterNomesJogadoresPorEquipe($pdo, $nomeTime)
{
    $sql = "SELECT nome_completo FROM relacao_nominal WHERE nome_equipe = :nome_time";

    try {
        $stmt = $pdo->prepare($sql);
        $stmt->bindParam(':nome_time', $nomeTime, PDO::PARAM_STR);
        $stmt->execute();

        $nomesJogadores = array();

        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $nomesJogadores[] = $row['nome_completo'];
        }

        return $nomesJogadores;
    } catch (PDOException $e) {
        echo "Erro ao obter nomes dos jogadores: " . $e->getMessage();
        return array();
    }
}

function listarTimesEJogadores($pdo, $timeA_nome, $timeB_nome, $tableName)
{
    $nomesJogadoresTimeA = obterNomesJogadoresPorEquipe($pdo, $timeA_nome);
    $nomesJogadoresTimeB = obterNomesJogadoresPorEquipe($pdo, $timeB_nome);
?>

    <!DOCTYPE html>
    <html>

    <head>
        <meta charset='UTF-8'>
        <title>Súmula</title>
        <link rel='stylesheet' href='criar-sumula.css'>
    </head>

    <body>

        <header class='cabecalho'>
            <h1 class='titulo'>Súmula</h1>
        </header>

        <div class='data-jogo'>
            <label for='data_partida' class="data-legenda" >Data do Jogo:</label>
            <input type='date' id='data_partida' name='data_partida' class="data-input">
        </div>


        <form enctype='multipart/form-data' method='post'>

            <div class='container'>

                <div class='time-section'>
                    <div class="placar-time-container">
                        <p class='nome-time'><?php echo $timeA_nome; ?></p>
                        <p class='placar-time' id='placar_timeA'>0</p>
                    </div>
                    <div class='jogadores-list-a'>

                        <?php
                        if (!empty($nomesJogadoresTimeA)) {
                            $primeiros25TimeA = array_slice($nomesJogadoresTimeA, 0, 25);
                            foreach ($primeiros25TimeA as $nomeCompleto) {
                                salvarJogadorNaTabela($pdo, $tableName, $timeA_nome, $nomeCompleto, isset($_POST["cartao_amarelo"][$timeA_nome][$nomeCompleto]) ? $_POST["cartao_amarelo"][$timeA_nome][$nomeCompleto] : 0, isset($_POST["cartao_vermelho"][$timeA_nome][$nomeCompleto]) ? $_POST["cartao_vermelho"][$timeA_nome][$nomeCompleto] : 0, isset($_POST["gols"][$timeA_nome][$nomeCompleto]) ? $_POST["gols"][$timeA_nome][$nomeCompleto] : 0);
                        ?>
                                <div class='jogador-info-a' data-tabela='<?php echo $tableName; ?>' data-time='<?php echo $timeA_nome; ?>'>
                                    <form enctype="multipart/form-data" method='post'>
                                        <p class='jogador-nome'><?php echo $nomeCompleto; ?></p>
                                        <input type='hidden' name='nome_jogador[<?php echo $timeA_nome; ?>][]' class='nome-jogador' value='<?php echo $nomeCompleto; ?>'>
                                        <div class='cartoes-gols-a'>
                                            <div class='cartao-amarelo-container'>
                                                <label for='cartao_amarelo_<?php echo $timeA_nome; ?>_<?php echo $nomeCompleto; ?>' class="cartao-amarelo-legenda">Amarelo:</label>
                                                <input type='number' class='cartao-amarelo' name='[cartao_amarelo][<?php echo $timeA_nome; ?>][<?php echo $nomeCompleto; ?>]' value='<?php echo isset($_POST["cartao_amarelo"][$timeA_nome][$nomeCompleto]) ? $_POST["cartao_amarelo"][$timeA_nome][$nomeCompleto] : ''; ?>'>

                                            </div>
                                            <div class='cartao-vermelho-container'>
                                                <label for='cartao_vermelho_<?php echo $timeA_nome; ?>_<?php echo $nomeCompleto; ?>' class="cartao-vermelho-legenda">Vermelhor:</label>
                                                <input type='number' class='cartao-vermelho' name='[cartao_vermelho][<?php echo $timeA_nome; ?>][<?php echo $nomeCompleto; ?>]' value='<?php echo isset($_POST["cartao_vermelho"][$timeA_nome][$nomeCompleto]) ? $_POST["cartao_vermelho"][$timeA_nome][$nomeCompleto] : ''; ?>'>
                                            </div>
                                            <div class='gols-container'>
                                                <label for='gols_<?php echo $timeA_nome; ?>_<?php echo $nomeCompleto; ?>' class="gol-legenda">Gols:</label>
                                                <input type='number' class='gols' name='[gols][<?php echo $timeA_nome; ?>][<?php echo $nomeCompleto; ?>]' value='<?php echo isset($_POST["gols"][$timeA_nome][$nomeCompleto]) ? $_POST["gols"][$timeA_nome][$nomeCompleto] : ''; ?>'>
                                            </div>
                                    </form>
                                </div>
                    </div>
            <?php
                            }
                        } else {
                            echo "<p>Nenhum nome completo encontrado para a equipe '$timeA_nome'.</p>";
                        }
            ?>
                </div>
            </div>

            <div class='time-section'>
            <div class="placar-time-container">
                <p class='nome-time'><?php echo $timeB_nome; ?></p>
                <p class='placar-time' id='placar_timeB'>0</p>
            </div>
                <div class='jogadores-list-b'>
                    <?php
                    if (!empty($nomesJogadoresTimeB)) {
                        $primeiros25TimeB = array_slice($nomesJogadoresTimeB, 0, 25);
                        foreach ($primeiros25TimeB as $nomeCompleto) {
                            salvarJogadorNaTabela($pdo, $tableName, $timeB_nome, $nomeCompleto, isset($_POST["cartao_amarelo"][$timeB_nome][$nomeCompleto]) ? $_POST["cartao_amarelo"][$timeB_nome][$nomeCompleto] : 0, isset($_POST["cartao_vermelho"][$timeB_nome][$nomeCompleto]) ? $_POST["cartao_vermelho"][$timeB_nome][$nomeCompleto] : 0, isset($_POST["gols"][$timeB_nome][$nomeCompleto]) ? $_POST["gols"][$timeB_nome][$nomeCompleto] : 0);
                    ?>
                            <div class='jogador-info-b' data-tabela='<?php echo $tableName; ?>' data-time='<?php echo $timeB_nome; ?>'>
                                <form enctype="multipart/form-data" method='post'>
                                    <p class='jogador-nome'><?php echo $nomeCompleto; ?></p>
                                    <input type='hidden' name='nome_jogador[<?php echo $timeB_nome; ?>][]' class='nome-jogador' value='<?php echo $nomeCompleto; ?>'>
                                    <div class='cartoes-gols-b'>
                                        <div class='cartao-amarelo-container'>
                                            <label for='cartao_amarelo_<?php echo $timeB_nome; ?>_<?php echo $nomeCompleto; ?>' class="cartao-amarelo-legenda">Amarelo:</label>
                                            <input type='number' class='cartao-amarelo' name='[cartao_amarelo][<?php echo $timeB_nome; ?>][<?php echo $nomeCompleto; ?>]' value='<?php echo isset($_POST["cartao_amarelo"][$timeB_nome][$nomeCompleto]) ? $_POST["cartao_amarelo"][$timeB_nome][$nomeCompleto] : ''; ?>'>
                                        </div>
                                        <div class='cartao-vermelho-container'>
                                            <label for='cartao_vermelho_<?php echo $timeB_nome; ?>_<?php echo $nomeCompleto; ?>' class="cartao-vermelho-legenda">Vermelho:</label>
                                            <input type='number' class='cartao-vermelho' name='[cartao_vermelho][<?php echo $timeB_nome; ?>][<?php echo $nomeCompleto; ?>]' value='<?php echo isset($_POST["cartao_vermelho"][$timeB_nome][$nomeCompleto]) ? $_POST["cartao_vermelho"][$timeB_nome][$nomeCompleto] : ''; ?>'>
                                        </div>
                                        <div class='gols-container'>
                                            <label for='gols_<?php echo $timeB_nome; ?>_<?php echo $nomeCompleto; ?>' class="gol-legenda">Gols:</label>
                                            <input type='number' class='gols' name='[gols][<?php echo $timeB_nome; ?>][<?php echo $nomeCompleto; ?>]' value='<?php echo isset($_POST["gols"][$timeB_nome][$nomeCompleto]) ? $_POST["gols"][$timeB_nome][$nomeCompleto] : ''; ?>'>
                                        </div>
                                    </div>
                                </form>
                            </div>
                    <?php
                        }
                    } else {
                        echo "<p>Nenhum nome completo encontrado para a equipe '$timeB_nome'.</p>";
                    }
                    ?>
                </div>
            </div>

            <div class='obs'>
                <label for='observacoes' class="obs-legenda">Observações:</label>
                <textarea id='observacoes' name='observacoes' cols='100' rows='10'></textarea>
            </div>
            </div>
            
            <div class="btn-container">
                <input class='btn' type='button' name='salvar' value='Salvar Súmula' id='btnSalvarSumula'>
                <a class="btn btn-cancelar" href="index.php">Cancelar</a>
            </div>

        </form>
        <footer class="rodape">
            <p class="rodape-texto">&copy; 2023 WebTech6</p>
            <!--Desenvolvido por Arissandro Sousa-->
        </footer>

        <script src="https://code.jquery.com/jquery-3.7.1.js" integrity="sha256-eKhayi8LEQwp4NKxN+CfCh+3qOVUtJn3QNZ0TciWLP4=" crossorigin="anonymous"></script>
        <script>
            $(document).ready(function() {
                // Evento para atualizar o placar quando um campo de gols é alterado
                $(document).on('change', 'input.gols', function() {
                    var golsTimeA = 0;
                    var golsTimeB = 0;

                    // Percorra os elementos de entrada de gols dos jogadores
                    $('input.gols').each(function() {
                        var gols = parseInt($(this).val()) || 0;
                        var jogadorInfo = $(this).closest('.jogador-info-a, .jogador-info-b');

                        if (jogadorInfo.hasClass('jogador-info-a')) {
                            golsTimeA += gols;
                        } else {
                            golsTimeB += gols;
                        }
                    });

                    // Atualize os valores do placar
                    $('#placar_timeA').text(golsTimeA);
                    $('#placar_timeB').text(golsTimeB);
                });

                // Evento para atualizar valores dos cartões e gols de jogadores
                $(document).on('change', 'input.cartao-amarelo, input.cartao-vermelho, input.gols', function() {
                    var jogadorInfo = $(this).closest('.jogador-info-a, .jogador-info-b');
                    var timeNome = jogadorInfo.data('time');
                    var nomeCompleto = jogadorInfo.find('p').text();
                    var tabela = jogadorInfo.data('tabela');
                    var campoNome = $(this).attr('name');

                    var cartaoAmarelo = jogadorInfo.find('input.cartao-amarelo').val();
                    var cartaoVermelho = jogadorInfo.find('input.cartao-vermelho').val();
                    var gols = parseInt(jogadorInfo.find('input.gols').val()) || 0;

                    $.ajax({
                        type: "POST",
                        url: "atualizaJogador.php",
                        data: {
                            action: 'atualizarValores',
                            timeNome: timeNome,
                            nomeCompleto: nomeCompleto,
                            cartaoAmarelo: cartaoAmarelo,
                            cartaoVermelho: cartaoVermelho,
                            gols: gols,
                            tabela: tabela,
                            campoNome: campoNome,
                        },
                        success: function(response) {
                            console.log('Resposta do servidor:', response);
                        },
                        error: function(jqXHR, textStatus, errorThrown) {
                            console.error('Erro ao atualizar os dados:', textStatus, errorThrown);
                        }
                    });
                });

                // Evento para salvar a súmula
                $('#btnSalvarSumula').on('click', function() {
                    var dataPartida = $('#data_partida').val();
                    var observacoes = $('#observacoes').val();
                    var tabela = $('.jogador-info-a, .jogador-info-b').first().data('tabela');

                    // Coleta os valores dos gols dos times
                    var golsTimeA = parseInt($('#placar_timeA').text());
                    var golsTimeB = parseInt($('#placar_timeB').text());

                    // Divide a string usando "_x_" como separador
                    var nomesTimes = tabela.split("_x_");

                    // Verifica se a string foi dividida com sucesso
                    if (nomesTimes.length === 2) {
                        var nomeTimeA = nomesTimes[0]; // A parte antes de "_x_"
                        var nomeTimeB = nomesTimes[1]; // A parte depois de "_x_"
                    } else {
                        console.error('Formato da tabela não é válido.');
                        return; // Impede a continuação da execução se o formato não for válido
                    }

                    // Inicialize as variáveis vitoria, derrota e empate como strings vazias
                    var vitoria = '';
                    var derrota = '';
                    var empate = 0;

                    // Calcula o resultado com base nos gols
                    if (golsTimeA > golsTimeB) {
                        vitoria = 'vitoria_' + nomeTimeA;
                        derrota = 'derrota_' + nomeTimeB;
                    } else if (golsTimeA < golsTimeB) {
                        vitoria = 'vitoria_' + nomeTimeB;
                        derrota = 'derrota_' + nomeTimeA;
                    } else {
                        empate = 1;
                    }



                    console.log('Data da partida:', dataPartida);
                    console.log('Observações:', observacoes);
                    console.log('Tabela:', tabela);
                    console.log('Nome do TimeA:', nomeTimeA);
                    console.log('Nome do TimeB:', nomeTimeB);
                    console.log('Gols TimeA:', golsTimeA);
                    console.log('Gols TimeB:', golsTimeB);
                    console.log('Vitoria:', vitoria);
                    console.log('Derrota:', derrota);
                    console.log('empate', empate);

                    // Enviar os dados ao servidor, incluindo o resultado e os nomes dos times
                    $.ajax({
                        type: "POST",
                        url: "salvarsumula.php",
                        data: {
                            action: 'salvarSumula',
                            tabela: tabela,
                            data_partida: dataPartida,
                            observacoes: observacoes,
                            gols_timeA: golsTimeA,
                            gols_timeB: golsTimeB,
                            nome_timeA: nomeTimeA,
                            nome_timeB: nomeTimeB,
                            vitoria: vitoria,
                            derrota: derrota,
                            empate: empate
                        },
                        success: function(response) {
                            console.log('Resposta do servidor:', response);
                            window.location.href = 'estatistica.php';
                        },
                        error: function(jqXHR, textStatus, errorThrown) {
                            console.error('Erro na consulta Ajax:', textStatus, errorThrown);
                        }
                    });
                });
            });
        </script>

    </body>

    </html>
<?php
}

function salvarJogadorNaTabela($pdo, $tableName, $timeNome, $nomeCompleto, $cartaoAmarelo, $cartaoVermelho, $gols)
{
    try {
        $atletaColumn = "atleta_$timeNome";
        $golsColumn = "gols_$timeNome";
        $cartaoAmareloColumn = "cartao_amarelo_$timeNome";
        $cartaoVermelhoColumn = "cartao_vermelho_$timeNome";

        $sqlSelect = "SELECT id FROM $tableName WHERE $atletaColumn = :nome_completo";
        $stmtSelect = $pdo->prepare($sqlSelect);
        $stmtSelect->bindParam(':nome_completo', $nomeCompleto, PDO::PARAM_STR);
        $stmtSelect->execute();

        if ($stmtSelect->rowCount() === 0) {


            $sqlInsert = "INSERT INTO $tableName ($atletaColumn, $golsColumn, $cartaoAmareloColumn, $cartaoVermelhoColumn) VALUES (:nome_completo, :gols, :cartao_amarelo, :cartao_vermelho)";

            $stmtInsert = $pdo->prepare($sqlInsert);
            $stmtInsert->bindParam(':nome_completo', $nomeCompleto, PDO::PARAM_STR);
            $stmtInsert->bindParam(':gols', $gols, PDO::PARAM_INT);
            $stmtInsert->bindParam(':cartao_amarelo', $cartaoAmarelo, PDO::PARAM_INT);
            $stmtInsert->bindParam(':cartao_vermelho', $cartaoVermelho, PDO::PARAM_INT);
            $stmtInsert->execute();
        } else {

            $sqlUpdate = "UPDATE $tableName SET $golsColumn = :gols, $cartaoAmareloColumn = :cartao_amarelo, $cartaoVermelhoColumn = :cartao_vermelho WHERE $atletaColumn = :nome_completo";
            $stmtUpdate = $pdo->prepare($sqlUpdate);
            $stmtUpdate->bindParam(':gols', $gols, PDO::PARAM_INT);
            $stmtUpdate->bindParam(':cartao_amarelo', $cartaoAmarelo, PDO::PARAM_INT);
            $stmtUpdate->bindParam(':cartao_vermelho', $cartaoVermelho, PDO::PARAM_INT);
            $stmtUpdate->bindParam(':nome_completo', $nomeCompleto, PDO::PARAM_STR);
            $stmtUpdate->execute();
        }
    } catch (PDOException $e) {
        echo "Erro ao salvar/atualizar o jogador $nomeCompleto na coluna $atletaColumn: " . $e->getMessage();
    }
}

function atualizarValoresNoBanco($pdo, $tableName, $timeNome, $nomeCompleto, $cartaoAmarelo, $cartaoVermelho, $gols)
{
    try {
        $atletaColumn = "atleta_$timeNome";
        $golsColumn = "gols_$timeNome";
        $cartaoAmareloColumn = "cartao_amarelo_$timeNome";
        $cartaoVermelhoColumn = "cartao_vermelho_$timeNome";

        $sqlUpdate = "UPDATE $tableName SET $golsColumn = :gols, $cartaoAmareloColumn = :cartao_amarelo, $cartaoVermelhoColumn = :cartao_vermelho WHERE $atletaColumn = :nome_completo";
        $stmtUpdate = $pdo->prepare($sqlUpdate);
        $stmtUpdate->bindParam(':gols', $gols, PDO::PARAM_INT);
        $stmtUpdate->bindParam(':cartao_amarelo', $cartaoAmarelo, PDO::PARAM_INT);
        $stmtUpdate->bindParam(':cartao_vermelho', $cartaoVermelho, PDO::PARAM_INT);
        $stmtUpdate->bindParam(':nome_completo', $nomeCompleto, PDO::PARAM_STR);
        $stmtUpdate->execute();


        echo "Atualização bem-sucedida";
    } catch (PDOException $e) {

        echo "Erro ao atualizar os valores: " . $e->getMessage();
    }
}



function main()
{
    $pdo = conexao();
    $timeA_nome = $timeB_nome = "";

    if ($_SERVER["REQUEST_METHOD"] === "POST") {
        if (empty($_POST["timeA"])) {
            $timeA_nomeErr = "Nome do Time A é obrigatório.";
        } else {
            $timeA_nome = $_POST["timeA"];
        }

        if (empty($_POST["timeB"])) {
            $timeB_nomeErr = "Nome do Time B é obrigatório.";
        } else {
            $timeB_nome = $_POST["timeB"];
        }
    }

    if (!empty($timeA_nome) && !empty($timeB_nome)) {
        $tableName = "{$timeA_nome}_x_{$timeB_nome}";

        $colunasTimeA = array(
            "gols_$timeA_nome INT DEFAULT 0",
            "tempo_$timeA_nome VARCHAR(255)",
            "atleta_$timeA_nome VARCHAR(255)",
            "cartao_amarelo_$timeA_nome INT DEFAULT 0",
            "cartao_vermelho_$timeA_nome INT DEFAULT 0",
            "vitoria_$timeA_nome INT DEFAULT 0",
            "derrota_$timeA_nome INT DEFAULT 0",


        );

        $colunasTimeB = array(
            "gols_$timeB_nome INT DEFAULT 0",
            "tempo_$timeB_nome VARCHAR(255)",
            "atleta_$timeB_nome VARCHAR(255)",
            "cartao_amarelo_$timeB_nome INT DEFAULT 0",
            "cartao_vermelho_$timeB_nome INT DEFAULT 0",
            "vitoria_$timeB_nome INT DEFAULT 0",
            "derrota_$timeB_nome INT DEFAULT 0",

        );

        criarTabelaSeNaoExistir($pdo, $tableName, $colunasTimeA, $colunasTimeB);

        listarTimesEJogadores($pdo, $timeA_nome, $timeB_nome, $tableName);
    }
}


main();
?>