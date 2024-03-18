<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
        .cabecalho{
            display: flex;
            justify-content: center;
        }
        .btn-container{
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 10px;
        }
       
        .btn{
            text-decoration: none;
            padding: 10px;
            border: 1px solid black;
            margin: 5px;
            color: black;
        }
        .btn:hover{
            background-color: lightblue;
        }
    </style>
    <title>Torneio Já Existe</title>

</head>

<body>
    <header class="cabecalho">
        <h1>O Time que você está tentando criar, já existe nessa Categoria.</h1>
    </header>

        <div class="btn-container">
            <a class="btn cadastra-times" href="cadastraTimes.php">Cadastrar Time </a>
            <a class="btn lista-times" href="listaDeTimes.php">Lista de Time</a>
        </div>
    </div>

</body>

</html>
