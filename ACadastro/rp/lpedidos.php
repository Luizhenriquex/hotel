
<?php




$sql='SELECT * FROM pedidos';

$res=$conn->query($sql);


echo "<table class='table table-hover 
table-striped table-bordered'>";
echo"<tr>";
echo  "<th>Nome</th>";
echo  "<th>Valor</th>";
echo  "<th>Descrição</th>";
echo  "<th>Tipo</th>";
echo  "<th></th>";



while($row=$res->fetch_object())
{
   
  
    echo "<form action='Vpedido.php' method='POST'>";
    echo "<tr><td><label></label> {$row->nome}</td>";
    echo "<td><label></label> {$row->valor}</td>";
    echo "<td><label></label> {$row->descricao}</td>";
    echo "<td><label></label> {$row->tipo}</td>";
    echo "<input type='hidden' name='id' value='{$row->id}'>";
    echo "<input type='hidden' name='valor' value='{$row->valor}'>";

    echo"<td> <button class='btn btn-secondary'>Aceitar<br></td>"; 

    echo "</form>";
}
echo"</table>";




?>