<html>
<head>

    <title> Experoni </title>

    <link rel="stylesheet" type="text/css" href="CSS/stily.css">
</head>

<h1> Experoni 3 </h1>

 <nav id="menu">
     <ul>
        <li><a href="produtos.php?produto=eletronicos"> Eletrônicos </a></li>
        <li><a href="produtos.php?produto=esportes">    Esportes    </a></li>
        <li><a href="produtos.php?produto=moveis">      Móveis      </a></li>
        <li><a href="produtos.php?produto=roupas">      Roupas      </a></li>
    </ul>
 </nav>
<br>

<?php include 'perfil.php' ?>

<form action="produtos.php" method="post">
    <label for="busca">Busca</label>
    <input type="text"   placeholder="Buscar" name="busca" id="busca" />
    <input type="submit" name="Enviar" />
</form>
<br>
</html>

