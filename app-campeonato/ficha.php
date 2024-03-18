<!DOCTYPE html>
<html lang="pt-BR">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exibir Dados do Formulário</title>
</head>

<body>
    <h1>Dados do Formulário</h1>

    <!-- Adicione o formulário aqui -->
    <form method="post" action="lerForm.php">
        <!-- Informações da Equipe -->
        <label for="modalidade">Modalidade:</label>
        <select name="modalidade" required>
            <option value="Futsal">Futsal</option>
            <option value="Campo">Campo</option>
        </select>


        <label for="nome">Nome da Equipe:</label>
        <input type="text" name="nome" required>

        <label for="cpf_cnpj">CPF/CNPJ:</label>
        <input type="text" name="cpf_cnpj" required>

        <label for="endereco">Endereço:</label>
        <input type="text" name="endereco">

        <label for="cidade">Cidade:</label>
        <input type="text" name="cidade">

        <label for="estado">Estado:</label>
        <input type="text" name="estado">

        <label for="cep">CEP:</label>
        <input type="text" name="cep">

        <!-- Informações do Responsável -->
        <label for="nome_responsavel">Nome do Responsável:</label>
        <input type="text" name="nome_responsavel">

        <label for="celular">Celular:</label>
        <input type="text" name="celular">

        <label for="email">Email:</label>
        <input type="email" name="email">

        <!-- Escolha do Plano -->
        <label for="plano">Escolha do Plano:</label>
        <div>
            <input type="radio" id="plano_a" name="plano" value="plano_a">
            <label for="plano_a">Plano A</label>
        </div>
        <div>
            <input type="radio" id="plano_b" name="plano" value="plano_b">
            <label for="plano_b">Plano B</label>
        </div>
        <div>
            <input type="radio" id="plano_c" name="plano" value="plano_c">
            <label for="plano_c">Plano C</label>
        </div>

        <!-- Escolha da Categoria Sub -->
        <label for="categoria_sub">Escolha da Categoria Sub:</label>
        <div>
            <input type="checkbox" id="sub_9" name="categoria_sub" value="sub 9">
            <label for="sub_9">Sub 9</label>
        </div>
        <div>
            <input type="checkbox" id="sub_11" name="categoria_sub" value="sub 11">
            <label for="sub_11">Sub 11</label>
        </div>
        <div>
            <input type="checkbox" id="sub_13" name="categoria_sub" value="sub 13">
            <label for="sub_13">Sub 13</label>
        </div>
        <div>
            <input type="checkbox" id="sub_15" name="categoria_sub" value="sub 15">
            <label for="sub_15">Sub 15</label>
        </div>
        <!-- Adicione mais opções conforme necessário -->


        <input type="submit" name="enviar" value="Enviar">
    </form>


</body>

</html>