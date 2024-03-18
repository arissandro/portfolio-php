<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="cadastraTorneio.css">
    <script src="validaForme.js"></script>
    <title>Página Novo Torneios</title>

</head>

<body>
    <header class="cabecalho">
        <h1 class="titulo">Cadastrar um novo Torneio</h1>
    </header>

    <div class="container-form">
        <h2 class="subtitulo">Cadastrar um novo Torneio</h2>
        
        <form action="criarTorneio.php" id="formNovoTorneio" method="post" onsubmit="return validarForm()">
            <div class="input-container">
                <div class="inputs">
                    <label for="nome_do_torneio" class="input-legenda">Nome do Torneio</label>
                    <input type="text" name="nome_do_torneio" id="nomeTorneio" class="input-nome" placeholder="Champ cup">
                </div>
                
                <div class="inputs">
                    <label for="categoria" class="input-legenda">Categoria</label>
                    <input type="text" name="categoria" id="categoria" class="input-categoria" placeholder="sub 13">
                </div>
            </div>
            <div class="btn-container">
                <button type="submit" name="acao" value="criarTorneio" class="btn btn-criar">Continuar</button>
                <a class="btn btn-cancelar" href="index.php">Cancelar</a>
            </div>
        </form>
    </div>
    <footer class="rodape">
        <p class="rodape-texto">&copy; 2023 WebTech6</p>
        <!--Desenvolvido por Arissandro Sousa-->
    </footer>
</body>
</html>
