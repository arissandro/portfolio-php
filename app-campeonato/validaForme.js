function validarForm() {
    // Verificar se o botão clicado tem o valor "enviar"
    var botaoClicado = document.activeElement;
    
    if (botaoClicado.value === "criarTorneio") {
        // Obter o valor do campo "nomeTorneio"
        var nomeTorneio = document.getElementById("nomeTorneio").value;

        // Verificar se o campo "nomeTorneio" está vazio
        if (nomeTorneio.trim() === "") {
            alert("Por favor, preencha o campo Nome do Torneio.");
            return false; // Impede o envio do formulário
        }
    }

    // Se a validação passar ou se outro botão foi clicado, permita o envio do formulário
    return true;
}