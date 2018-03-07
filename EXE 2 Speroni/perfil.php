<?php

    session_start();

    if (!isset($_SESSION['esta_logado'])):
?>

<form action="login.php?acao=login" method="post">
    <br>
    <label for="nome">Nome:</label>
    <input type="text"     placeholder="Nome"  name="nome" id="nome" />
    <br/>
    <br>
    <label for="senha">Senha:</label>
    <input type="password" placeholder="Senha" name="senha" id="senha" />
    <br/>
    <br>
    <input type="submit" value="Enviar" />
    <br/>
</form>

<?php elseif ($_SESSION['esta_logado']): ?>

 <h3> Bem Vindo <?= $_SESSION['nome'] ?></h3>

<a href="login.php?acao=logout">Sair</a>

<?php endif; ?>

