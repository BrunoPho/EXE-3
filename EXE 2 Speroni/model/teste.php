<?php
/**
 * Created by PhpStorm.
 * User: aluno
 * Date: 28/02/18
 * Time: 13:36
 */

include "Conexao.php";
include "CategoriaCrud.php";
include "ProdutoCrud.php";


$con = new Conexao();

$conexao = $con->getConexao();

$cat = new CategoriaCrud();

$prod = new ProdutoCrud();

print_r($cat->getCategorias());

echo "\n --- \n";

print_r($cat->getCategoria(3));

echo "\n --- \n";

print_r($prod->getProdutos());

echo "\n --- \n";

print_r($prod->getProduto(8));

