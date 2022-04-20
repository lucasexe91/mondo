{include 'templates/header.tpl'}
<div class="container">
<div class="row justify-content-md-center">
    <div class="col"></div>
    <div class="col-6">
        <form action="guardar" method="POST" enctype="multipart/form-data">
            <br>
            <br>
            <div class="form-floating mb-3">
                <input type="nombre" class="form-control" id="floatingInput" placeholder="Nombre" name="nombre">
                <label for="floatingInput">Nombre</label>
            </div>
            <div class="form-floating mb-3">
                <textarea type="modo" class="form-control" id="floatingTextarea2" placeholder="Modo de uso" name="modo" style="height: 100px"></textarea>
                <label for="floatingInput">Modo de uso</label>
            </div>
            <div class="form-floating mb-3">
                <textarea type="composicion" class="form-control" id="floatingTextarea2" placeholder="Composición" name="composicion" style="height: 100px"></textarea>
                <label for="floatingInput">Composición</label>
            </div>
            <div class="form-floating mb-3">
                <textarea type="descripcion" class="form-control" id="floatingTextarea2"  placeholder="Descripción" name="descripcion" style="height: 100px"></textarea>
                <label for="floatingInput">Descripción</label>
            </div>
            <div class="form-floating mb-3">
                    <textarea type="advertencias" class="form-control" id="floatingTextarea2"  placeholder="Advertencias" name="advertencias" style="height: 100px"></textarea>
                    <label for="floatingInput">Advertencias</label>
                </div>
                <div class="form-floating mb-3">
                    <textarea type="caducidad" class="form-control" id="floatingTextarea2"  placeholder="Caducidad" name="caducidad" style="height: 100px"></textarea>
                    <label for="floatingInput">Caducidad</label>
                </div>
            <div class="mb-3">
                <label for="formFile" class="form-label">Imagen</label>
                <input class="form-control" type="file" id="formFile" name="imagen">
            </div>
            <a href="panel" class="btn btn-outline-danger">Cancelar</a>
            <button class="btn btn-outline-success" type="submit">Guardar</button>
        </form>
    </div>
    <div class="col"></div>
</div>
</div>
<br>
{include 'templates/footer.tpl'}