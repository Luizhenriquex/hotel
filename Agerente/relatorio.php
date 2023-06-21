<h1>Relatório</h1>

<?php 

echo"<h4 class='font-weight-bold'>Funcionários do hotel</h4>";
$sql="SELECT * FROM funcionarios
 where
 funcionario='recepcionista' OR funcionario='gerente' ";
$res = $conn->query($sql);
$nrows=$res->num_rows;

if($nrows>0){

    echo "<table class='table table-hover 
    table-striped table-bordered'>";
    echo"<tr>";
    echo  "<th>Nome</th>";
    echo  "<th>CPF</th>";
    echo  "<th>Usuário</th>";
    echo  "<th>Funcionário</th>";
    echo  "<th>Supervisor</th>";
    while($row = $res->fetch_object()){

     echo "<tr><td><label></label> {$row->nome}</td>";
     echo "<td><label></label> {$row->cpf}</td>";
     echo "<td><label></label> {$row->usuario}</td>";
     echo "<td><label></label> {$row->funcionario}</td>";
     echo "<td><label></label> {$row->supervisor}</td></tr>";
     
    }
    echo"</table>";

}



$sql="SELECT * FROM funcionarios
 where
 funcionario='hospede' ";
$res = $conn->query($sql);
$nrows=$res->num_rows;
echo"<h4 class='font-weight-bold'>Hospedes cadastrados</h4>";
if($nrows>0){

    echo "<table class='table table-hover 
    table-striped table-bordered'>";
    echo"<tr>";
    echo  "<th>Nome</th>";
    echo  "<th>CPF</th>";
    echo  "<th>Usuário</th>";
    echo  "<th>Funcionário</th>";
    echo  "<th>Supervisor</th>";
    while($row = $res->fetch_object()){

     echo "<tr><td><label></label> {$row->nome}</td>";
     echo "<td><label></label> {$row->cpf}</td>";
     echo "<td><label></label> {$row->usuario}</td>";
     echo "<td><label></label> {$row->funcionario}</td>";
     echo "<td><label></label> {$row->supervisor}</td></tr>";
     
    }
    echo"</table>";

}

echo"<h4 class='font font-weight-italic'>Estruturas</h4>";
$sql="SELECT * FROM estruturas";
$res=$conn->query($sql);


echo "<table class='table table-hover 
table-striped table-bordered'>";
echo"<tr>";
echo  "<th>Estrutura</th>";
echo  "<th>Ocupação</th>";
echo  "<th>Capacidade</th>";
echo  "<th>Valor com desconto</th>";
echo  "<th>Valor</th>";
echo  "<th>Desconto (dm)</th>";

echo  "<th>Reservado para o(a):</th>";
echo  "<th></th>";

while($row=$res->fetch_object()){
   $val= (($row->valor)-($row->valor)*($row->desconto));
    echo "<form action='reserva.php' method='POST'>";
    echo "<tr><td><label>Estrutura:</label> {$row->estrutura}</td>";
    echo "<td><label></label> {$row->ocupado}</td>";
    echo "<td><label></label> {$row->capacidade}</td>";
    echo "<td><label></label> {$val}</td>";
    echo "<td><label></label> {$row->valor}</td>";
    echo "<td><label></label> {$row->desconto}</td>";
    echo "<td><label></label> {$row->pessoa}</td>";
    echo "<input type='hidden' name='id' value='{$row->id}'>";
    echo "<input type='hidden' name='desreservar' value='{$row->ocupado}'>";
    echo "<input type='hidden' name='valor' value='{$row->valor}'>";
    echo "<td><label></label>" ;
}
echo"</table>";

echo "

";

$sql="SELECT * FROM funcionarios where funcionario='hotel' ";
$res = $conn->query($sql);
$row=$res->fetch_object();
echo "<div class='container'>
<div class='col-md-6 offset-md-3'>
<h2 class='text text-uppercase text-muted font-weight-bold'>Valor total: R$ {$row->dinheiro} </h2></div>";