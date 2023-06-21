<div class="container">
<form action="./Agerente/Vprom.php" method="POST">
    <div class="form-group">
    <div class="col-md-6 offset-md-3">
    <h1 class="text text-uppercase font-monospace">PROMOÇÕES</h1>
    </div>
        <div class="col-md-6 offset-md-3">
<h5 class="fst-italic">Atualizar desconto</h5>


<h5>Estruturas:</h5>
<div class="form-check">
<input class="form-check-input" type="radio" name="es" value="quarto" />Quarto
</div>
<div class="form-check">
<input class="form-check-input" type="radio" name="es" value="salao" />Salão
</div>
<div class="form-check">
<input class="form-check-input" type="radio" name="es" value="" />Nenhuma
</div>

<h5>Serviços:</h5>
<div class="form-check">
<input class="form-check-input" type="radio" name="se" value="serviço de quarto" />Serviço de quarto
</div>

<div class="form-check">
<input class="form-check-input" type="radio" name="se" value="" />Nenhum
</div>

<label class="fw-bolder" for="">Valor do desconto (0 - 100):</label>
<div class="input-group mb-3">
<input class="form-control" type="number" name="promocao">
<div class="input-group-append">
<button class="btn btn-success">Atualizar</button>
</div>
</div>

</div>
</div>
</form>
</div>