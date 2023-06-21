<div class="container">
<form action="?page=salvar" method="POST">
 <div class="form-group">
<h1 class="text text-uppercase">Informe o usuário que deseja remover</h1>

<!-- AÇÃO -->
<input type="hidden" name="acao" value="excluir">

<!-- INFORMA -->
<label class="display-6" for="">Usuário</label>
<input class="form-control" type="text" name="usuario">

<br>
<!-- ENVIA -->
<div class="d-grid gap-2">
<button type="button" class="btn btn-danger">EXCLUIR</button>
</div>
</div>
</form>
</div>