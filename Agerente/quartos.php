<div class="container">

<form action="./Agerente/Vquartos.php" method='POST'>
<div class="form-group">
    <div class="col-md-6 offset-md-3">
<h1 class="fw-bold">Inserir novo quarto</h1>
    </div>
    <div class="col-md-6 offset-md-3">
<h3 class="fs-2 fw-normal">Estrutura:</h3>
    </div>
    <div class="col-md-6 offset-md-3">
    <div class="form-check">
<input class="form-check-input" type="radio" name='estrutura' value="quarto"/>Quarto
</div>
    </div>

    <div class="col-md-6 offset-md-3">
        <div class="form-check">
<input class="form-check-input" type="radio" name='estrutura' value="salao"/>Salão
</div>
    </div>

    <div class="col-md-6 offset-md-3">
<label class="fs-4" for="">Capacidade:</label>
<input class="form-control" type="text" name='capacidade'>
    </div>

<input type="hidden" name='ocupado' value='nao'>

<div class="col-md-6 offset-md-3">
<label class="fs-4" for="">Valor (R$):</label>
<input class="form-control" type="text" name='valor'>
</div>

<br>
<div class="col-md-6 offset-md-3">
<div class="d-grid gap-2">
<button class="btn btn-primary">Cadastrar</button>
</div>
</div>
</div>
</form>
</div>