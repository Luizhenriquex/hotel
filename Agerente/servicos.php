<div class="container">

<form action="./Agerente/Vservi.php" method="POST">
<div class="form-group">
<div class="col-md-6 offset-md-3">
<h1>Cadastro de Serviços</h1>
</div>
    <div class="col-md-6 offset-md-3">
<h4>Informações:</h4>
</div>

<div class="col-md-6 offset-md-3">
<label for="">Nome:</label>
<input class="form-control" type="text" name="nome">
</div>

<div class="col-md-6 offset-md-3">
<label for="">Valor (R$):</label>
<input class="form-control" type="number" name="valor">
</div>

<div class="col-md-6 offset-md-3">
<label for="">Descrição:</label>
<input class="form-control" type="text" name="descricao">
</div>

<div class="col-md-6 offset-md-3">
<h4>Tipo de serviço:</h4>
<div class="form-check">
<input class="form-check-input" type="radio" name="serp" value="quarto" />Quarto
</div>

<div class="form-check">
<input class="form-check-input" type="radio" name="serp" value="salao" />Salão
</div>

<div class="form-check">
<input class="form-check-input" type="radio" name="serp" value="servicog" />Serviço geral
</div>
<div class="d-grid gap-2">
<button type="button" class="btn btn-primary">Cadastrar</button>
</div>
</div>
</div>
</form>

</div>