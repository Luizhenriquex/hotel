

<?php
$sql="SELECT * FROM estruturas";
$res=$conn->query($sql);


echo "<table class='table table-hover 
table-striped table-bordered'>";
echo"<tr>";
echo  "<th>Estrutura</th>";
echo  "<th>Ocupação</th>";
echo  "<th>Capacidade</th>";
echo  "<th>Valor com desconto</th>";
echo  "<th></th>";

while($row=$res->fetch_object()){
   $val= (($row->valor)-($row->valor)*($row->desconto));
    echo "<form action='reserva.php' method='POST'>";
    echo "<tr><td><label></label> {$row->estrutura}</td>";
    echo "<td><label></label> {$row->ocupado}</td>";
    echo "<td><label></label> {$row->capacidade}</td>";
    echo "<td><label></label> {$val}</td>";
    echo "<input type='hidden' name='id' value='{$row->id}'>";
    echo "<input type='hidden' name='desreservar' value='{$row->ocupado}'>";
    echo "<input type='hidden' name='valor' value='{$row->valor}'>";
    echo "<td><label></label>" ;


    //butão
       if($_SESSION['nome']==$row->pessoa || $row->pessoa==''){
    if($row->ocupado=='nao')
    {echo" <button class='btn btn-success'>Reservar</td>";}else{
        echo" <button class='btn btn-warning'>Cancelar</td>";
    }}
    echo "</form>";
}
echo"</table>";
?>
