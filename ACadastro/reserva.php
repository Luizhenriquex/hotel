

<?php 
session_start();
include('../config.php');
$id=$_REQUEST["id"];
$valor=$_REQUEST['valor'];


//fazer rezerva e desrezervar
if($_REQUEST['desreservar']=='nao' 
&& 
$_SESSION['dinheiro']>$valor){

    $dinheiroOP;

//procura dinheiro
$sql1="SELECT * FROM funcionarios WHERE nome='{$_SESSION['nome']}'";
$res1=$conn->query($sql1);
$row1=$res1->fetch_object();

//procura desconto
$sql2="SELECT * FROM estruturas WHERE id='{$id}'";
$res2=$conn->query($sql2);
$row2=$res2->fetch_object();

$sql3="SELECT * FROM funcionarios WHERE nome='hotel'";
$res3=$conn->query($sql3);
$row3=$res3->fetch_object();

//cauculo para atualizar o dinheiro
$dinheiroOP=($row1->dinheiro)-(($row2->valor)-($row2->valor)*($row2->desconto));
$hotelM=$row3->dinheiro+($row2->valor)-($row2->valor)*($row2->desconto);

//atualizando valores
$sql3="UPDATE estruturas SET ocupado='sim',pessoa='{$_SESSION['nome']}' WHERE id='{$id}'";
$sql4="UPDATE funcionarios SET dinheiro='{$dinheiroOP}' WHERE nome='{$_SESSION['nome']}'";
$sql5="UPDATE funcionarios SET dinheiro='{$hotelM}' WHERE nome='hotel'";
//executando operacoes
$res=$conn->query($sql3);
$res=$conn->query($sql4);
$res=$conn->query($sql5);
 
if($res==true){

    echo "<script type='javascript'>alert('reservado com sucesso');</script>";

    header("Location: ../Acadastro/Agerente.php");
}else{

    echo "<script type='javascript'>alert('nao reservado com sucesso');</script>";
    header("Location: ../Acadastro/Agerente.php");

}}else{
    $sql="UPDATE estruturas SET ocupado='nao',pessoa='' WHERE id='{$id}'";

    $res=$conn->query($sql);
    
    if($res==true){
    
        echo "<script type='javascript'>alert('reservado com sucesso');</script>";
    
        header("Location: ../Acadastro/Agerente.php");
    }else{
    
        echo "<script type='javascript'>alert('nao reservado com sucesso');</script>";
        header("Location: ../Acadastro/Agerente.php");
    
    }



}



?>