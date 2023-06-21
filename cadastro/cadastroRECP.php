<?php
echo"
<div class='container'>

<form action='?page2=salvar' method='POST'>
<div class='form-group'>
<div class='col-md-6 offset-md-3'>
<h2 class='fw-bold display-6'>CADASTRO DE PESSOAS</h2>
</div>
    <input type='hidden' name='funcionario' value='hospede'>
    <input type='hidden' name='acao'value='cadastrar'>

    <div class='col-md-6 offset-md-3'>
<label class='fs-5'>NOME</label>
<input type='text' placeholder='Informe seu nome' class='form-control' name='nome'>
</div>

<div class='col-md-6 offset-md-3'>
<label class='fs-5'>SOBRENOME</label>
<input type='text' placeholder='Informe seu sobrenome' class='form-control' name='sobrenome'>
</div>

<div class='col-md-6 offset-md-3'>
<label class='fs-5'>CPF</label>
<input type='text' placeholder='Informe seu cpf' class='form-control'name='cpf'>
</div>

<div class='col-md-6 offset-md-3'>
<label class='fs-5'>USUÁRIO</label>
<input type='text' placeholder='Informe seu nome de usuário' class='form-control' name='usuario'>
</div>

<div class='col-md-6 offset-md-3'>
<label class='fs-5'>SENHA</label>
<input type='password' placeholder='Informe sua senha' class='form-control' name='senha'>
</div>

<input type='hidden' name='supervisor' value='{$_SESSION['nome']}'>

<br>

<div class='col-md-6 offset-md-3 d-grid gap-2'>
<button class='btn btn-primary'>enviar</button>
</div>


</div>
</div>
</form
</div>
";

?>