{include 'templates/header.tpl'}

<br><br>
    <div class="container">
    <div class="row justify-content-md-center">
        <div class="col clearfix">
            <img class="col-md-6 mb-3 ms-md-3" src="{$producto->imagen}" style="width: 400px;" alt="...">
            <h1>{$producto->nombre}</h5>
            <h5>Descripción</h5>
            <p class="card-text">{$producto->descripcion}</p>
            <h5>Modo de uso</h5>
            <p class="card-text">{$producto->mododeuso}</p>
            <h5>Composición</h5>
            <p class="card-text">{$producto->composicion}</p>
            <h5>Advertencias</h5>
            <p class="card-text">{$producto->advertencias}</p>
            <h5>Caducidad</h5>
            <p class="card-text">{$producto->caducidad}</p>
            <br>
        </div>
        <div class="col">
            <br>
            <form action="modificar/{$producto->id}" method="POST" enctype="multipart/form-data">
                
                <div class="form-floating mb-3">
                    <input type="nombre" class="form-control" id="floatingInput" placeholder="Nombre" name="nombre" value="{$producto->nombre}">
                    <label for="floatingInput">Nombre</label>
                </div>
                <div class="form-floating mb-3">
                    <textarea type="descripcion" class="form-control" id="floatingTextarea2"  placeholder="Descripción" name="descripcion" style="height: 100px" >{$producto->descripcion}</textarea>
                    <label for="floatingInput">Descripción</label>
                </div>
                <div class="form-floating mb-3">
                    <textarea type="modo" class="form-control" id="floatingTextarea2" placeholder="Modo de uso" name="modo" style="height: 100px">{$producto->mododeuso}</textarea>
                    <label for="floatingInput">Modo de uso</label>
                </div>
                <div class="form-floating mb-3">
                    <textarea type="composicion" class="form-control" id="floatingTextarea2" placeholder="Composición" name="composicion" style="height: 100px">{$producto->composicion}</textarea>
                    <label for="floatingInput">Composición</label>
                </div>
                <div class="form-floating mb-3">
                    <textarea type="advertencias" class="form-control" id="floatingTextarea2"  placeholder="Advertencias" name="advertencias" style="height: 100px">{$producto->advertencias}</textarea>
                    <label for="floatingInput">Advertencias</label>
                </div>
                <div class="form-floating mb-3">
                    <textarea type="caducidad" class="form-control" id="floatingTextarea2"  placeholder="Caducidad" name="caducidad" style="height: 100px">{$producto->caducidad}</textarea>
                    <label for="floatingInput">Caducidad</label>
                </div>
                <div class="mb-3">
                    <label for="formFile" class="form-label">Imagen</label>
                    <input class="form-control" type="file" id="formFile" name="imagen" value="{$producto->imagen}">
                </div>
                <a href="panel" class="btn btn-outline-danger">Cancelar</a>
                <button class="btn btn-outline-success" type="submit">Guardar</button>
            </form>
        </div>
    </div>
  </div>
{include 'templates/footer.tpl'}