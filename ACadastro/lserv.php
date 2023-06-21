<?php

$sql1="SELECT * FROM estruturas WHERE pessoa='{$_SESSION['nome']}'";
$res1=$conn->query($sql1);
$res2=$conn->query($sql1);


if($res1->fetch_object()){
$sql="SELECT * FROM servicos";
$res=$conn->query($sql);


echo "<table class='table table-hover 
table-striped table-bordered'>";
echo"<tr>";
echo  "<th>Serviço </th>";
echo  "<th>Valor com desconto</th>";
echo  "<th>Descrição</th>";
echo  "<th>Solicitar</th>";

$tipo=' ';
//bug nao resolvido so mostra servicos de um tipo de estrutura por vez
while($rowES=$res2->fetch_object()){
    if($tipo!=$rowES->tipo){
        $tipo= $rowES->tipo;
while($rowServico=$res->fetch_object()){

 if($rowServico->servp==$rowES->tipo){


   $val= (($rowServico->valor)-($rowServico->valor)*($rowServico->desconto));
    echo "<form action='reservaSERV.php' method='POST'>";
    echo "<tr><td><label></label> {$rowServico->nome}</td>";
    echo "<td><label></label> {$val}</td>";
    echo "<td><label></label> {$rowServico->descricao}</td>";
    echo "<input type='hidden' name='id' value='{$rowServico->nome}'>";
    echo "<input type='hidden' name='valor' value='{$rowServico->valor}'>";
    echo "<td><label></label>" ;

    if($_SESSION[$rowServico->servp]!='solicitado'){
    echo" <button class='btn btn-primary'>Solicitar<br>";
    }else{
    echo" <button class='btn btn-warning'>Desfazer ação<br>"; 
  
    }
    echo "</form>";
}}}}
}else{
    
    echo"<h1>Reserve algo antes de entrar nessa página</h1>";
    }
  

echo"</table>";
?>
<div class="card mb-3">
  <img class="card-img-top" src="https://www.japanhousesp.com.br/sites/japanhouse.com.saopaulo/files/styles/large/public/2021-01/Onsen_site.jpg?itok=4lGZMOj2" alt="Imagem de capa do card">
  <div class="card-body">
    <h5 class="card-title">HOTEL DA EEEP</h5>
    <p class="card-text">Desfrute de quartos espaçosos e elegantemente decorados, equipados com comodidades de alta qualidade para garantir o seu total relaxamento. Nossa equipe amigável e atenciosa está pronta para atender a todas as suas necessidades, proporcionando um serviço personalizado que irá superar suas expectativas.</p>
    <p class="card-text"><small class="text-muted">Atualizado à 2 semans atrás</small></p>
  </div>
</div>