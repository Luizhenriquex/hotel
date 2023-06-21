<?php

switch(@$_REQUEST['OqCAD']){

default:
echo"
<div class='container'>
<div class='col-md-6 offset-md-3'>
<h3 class='display-5 fw-bold'>Quem você deseja cadastrar?</h3>
</div>

<div class='col-md-6 offset-md-3'>
<div class='d-grid gap-2'>
<button type='button' class='btn btn-primary'><a class='display-6 text text-white' style='text-decoration: none;' href='?OqCAD=pessoas'>Pessoas</a></button>
</div>
</div>
<br>

<div class='col-md-6 offset-md-3'>
<div class='d-grid gap-2'>
<button type='button' class='btn btn-primary'><a class='display-6 text text-white' style='text-decoration: none;' href='?OqCAD=quartos'>Quartos</a></button>
</div>
</div>
<br>

<div class='col-md-6 offset-md-3'>
<div class='d-grid gap-2'>
<button type='button' class='btn btn-primary'><a class='display-6 text text-white' style='text-decoration: none;' href='?OqCAD=servicos'>Serviços</a></button>
</div>
</div>
<br>

<div class='col-md-6 offset-md-3'>
<div class='d-grid gap-2'>
<button type='button' class='btn btn-primary'><a class='display-6 text text-white' style='text-decoration: none;' href='?OqCAD=promocoes'>Promoções</a></button>
</div>
</div>
";
break;

}

?>