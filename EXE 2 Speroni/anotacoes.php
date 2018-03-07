<?php

#CategoriaCrud.php

 public function getCategorias(){

     $consulta = "select * from categoria";
     $resultado = this->conexao->query($consulta);

     $categorias = $resultado->fetchAll(FETCH_ASSOC);

     $arrCategorias = [];
     foreach ($categorias as $categoria){
         $c1 = new Categoria($categoria['id_categoria'], $categoria['nome_categoria']);
         $arrCategorias[] = $c1;

     }

         return $arrCategorias;
}

#CategoriaCrud.php/>