<?php 

echo"
<div class='container'>

<form action='?page=salvar' method='POST'>
<div class='form-row'>
<div class='col-md-6 offset-md-3'>
<h2 class='display-5'>CADASTRO DE PESSOAS</h2>
</div>
<div class='form-check'>
<div class='col-md-6 offset-md-3'>
<input class='form-check-input' type='radio' name='funcionario' value='hospede' />Hospede 
</div>
</div>
<div class='form-check'>
<div class='col-md-6 offset-md-3'>
<input class='form-check-input' type='radio' name='funcionario' value='gerente' />Gerente
</div>
</div>
<div class='form-check'>
<div class='col-md-6 offset-md-3'>
<input class='form-check-input' type='radio' name='funcionario' value='recepcionista' />Recepcionista
</div>
</div>



<input type='hidden' name='acao'value='cadastrar'>
<div class='col-md-6 offset-md-3'>
<label class='fs-5'>NOME</label>
<input required type='text' class='form-control' placeholder='Informe seu nome' name='nome'>
</div>


<div class='col-md-6 offset-md-3'>
<label class='fs-5'>SOBRENOME</label>
<input required type='text' class='form-control' placeholder='Informe seu sobrenome' name='sobrenome'>
</div>

<div class='col-md-6 offset-md-3'>
<label class='fs-5'>CPF</label>
<input required type='text' class='form-control' placeholder='Informe seu cpf' name='cpf'>
</div>

<div class='col-md-6 offset-md-3'>
<label class='fs-5'>USUARIO</label>
<input required type='text' class='form-control' placeholder='Nome de usuário' name='usuario'>
</div>

<div class='col-md-6 offset-md-3'>
<label class='fs-5'>SENHA</label>
<input required type='password' class='form-control' placeholder='Informe sua senha' name='senha'>
</div>


<input type='hidden' name='supervisor' value='{$_SESSION['nome']}'>
<br>
</div>
<div class='col-md-6 offset-md-3'>
<div class='d-grid gap-2'>
<button class='btn btn-primary'>Enviar</button>

</div>
</div>
</div>
</form>
</div>";
?>