<?php
/**
 * Created by PhpStorm.
 * User: aluno
 * Date: 28/02/18
 * Time: 14:10
 */

require_once "Conexao.php";
require_once "Produto.php";


class ProdutoCrud
{
    private $conexao;

    public function __construct()
    {
        $con = new Conexao();
        $this->conexao = $con->getConexao();
    }

    public function getProdutos(){
        $sql = "SELECT * FROM produto";

        $produtos = $this->conexao->query($sql);

        $produtos = $produtos->fetchAll(PDO::FETCH_ASSOC);

        $listaProdutos = [];

        foreach ($produtos as $produto){
            $prod = new Produto();

            $prod->setDescricao($produto['descricao_produto']);
            $prod->setId($produto['id_produto']);
            $prod->setNome($produto['nome_produto']);
            $prod->setFoto($produto['foto_produto']);
            $prod->setPreco($produto['preco_produto']);
            $prod->setCategoria($produto['id_categoria']);

            $listaProdutos[] = $prod;
        }




        return $listaProdutos;
    }

    public function getProduto($id){
        $sql = "SELECT * FROM produto WHERE id_produto = $id";

        $produto = $this->conexao->query($sql);

        $produto = $produto->fetch(PDO::FETCH_ASSOC);

        $prod = new Produto();

        $prod->setDescricao($produto['descricao_produto']);
        $prod->setId($produto['id_produto']);
        $prod->setNome($produto['nome_produto']);
        $prod->setFoto($produto['foto_produto']);
        $prod->setPreco($produto['preco_produto']);
        $prod->setCategoria($produto['id_categoria']);
        

        return $prod;
    }
}