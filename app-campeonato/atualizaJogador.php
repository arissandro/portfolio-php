<?php
include_once 'conexao.php';

$pdo = conexao();

if ($_POST['action'] === 'atualizarValores') {
    $campoNome = $_POST['campoNome'];
    $tabela = $_POST['tabela'];

    preg_match_all('/\[(.*?)\]/', $campoNome, $matches);

    $partes = $matches[1];

    if (count($partes) < 3) {
        echo "Campo não possui todas as partes necessárias.";
        exit;
    }

    $acao = $partes[0]; // Exemplo: cartao_amarelo
    $nomeTime = $partes[1]; // Exemplo: vasco
    $nomeCompleto = $partes[2]; // Exemplo: joka

    // Determine a coluna a ser atualizada com base na ação
    $coluna = '';
    switch ($acao) {
        case 'cartao_amarelo':
            $coluna = "cartao_amarelo_$nomeTime";
            $valorCampo = $_POST['cartaoAmarelo'];
            break;
        case 'cartao_vermelho':
            $coluna = "cartao_vermelho_$nomeTime";
            $valorCampo = $_POST['cartaoVermelho'];
            break;
        case 'gols':
            $coluna = "gols_$nomeTime";
            $valorCampo = $_POST['gols'];
            break;
        default:
            echo "Campo não permitido: " . $acao;
            exit;
    }

    

    $sql = "UPDATE $tabela SET $coluna = :valorCampo WHERE atleta_$nomeTime = :nomeCompleto";
    $stmt = $pdo->prepare($sql);
    $stmt->bindParam(':valorCampo', $valorCampo, PDO::PARAM_INT);
    $stmt->bindParam(':nomeCompleto', $nomeCompleto, PDO::PARAM_STR);

    if ($stmt->execute()) {
        echo "Atualização bem-sucedida";
        // Adicione console.log para depuração
    console.log('Ação:', $acao);
    console.log('Nome do Time:', $nomeTime);
    console.log('Nome Completo:', $nomeCompleto);
    } else {
        echo "Erro ao atualizar o campo: " . $acao;
    }
}

?>
