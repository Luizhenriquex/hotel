


<?php

include("../config.php");

$estrutura=$_REQUEST["estrutura"];
$capacidade=$_REQUEST["capacidade"];
$ocupado=$_REQUEST["ocupado"];
$valor=$_REQUEST["valor"];
$tipo=$_REQUEST["estrutura"];

$sql="INSERT INTO estruturas(estrutura,capacidade,ocupado,valor,tipo) 
VALUES(
    '{$estrutura}',
    '{$capacidade}',
    '{$ocupado}',
    '{$valor}',
    '{$tipo}'
)";

$conn->query($sql);

header("location: ../index.php");






?>