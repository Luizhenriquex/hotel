
<h1 class="display-2 fw-bold">Listar</h1>
<label class="display-6 fw-normal" for="">Estes são todos os usuários cadastrados no sistema!</label>
<?php 
if ($_SESSION['func']=="gerente") {
    $sql="SELECT * FROM funcionarios";
} else {
    $sql="SELECT * FROM funcionarios where funcionario='hospede'";
}


$res = $conn->query($sql);
$nrows=$res->num_rows;
if($nrows>0){

    echo "<table class='table table-hover 
    table-striped table-bordered'>";
    echo"<tr>";
    echo  "<th>Nome</th>";
    echo  "<th>CPF</th>";
    echo  "<th>Usuário</th>";
    if($_SESSION['func']=='gerente'){
    echo  "<th>Funcionário</th>";
    echo  "<th>Supervisor</th>";}
    while($row = $res->fetch_object()){

     echo "<tr><td><label></label> {$row->nome}</td>";
     echo "<td><label></label> {$row->cpf}</td>";
     echo "<td><label></label> {$row->usuario}</td>";
     if($_SESSION['func']=='gerente'){
     echo "<td><label></label> {$row->funcionario}</td>";
     echo "<td><label></label> {$row->supervisor}</td></tr>";
     }
     
    }
    echo"</table>";

}else{
    echo " <br><h1>SEM RESULTADOS</h1>";

}

?>