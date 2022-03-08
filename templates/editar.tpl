{include 'templates/header.tpl'}
<br><br>   
    <div class="container">
    <div class="row justify-content-md-center">
        <div class="col">        
            <div class="card" style="width: 18rem;">
              <img class="w-80 p-3" src="{$producto->imagen}" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">{$producto->nombre}</h5>
                <p class="card-text">{$producto->composicion}</p>
                <p class="card-text">{$producto->mododeuso}</p>
                <p class="card-text">{$producto->descripcion}</p>
              </div>
            </div>
        </div>
        <div class="col">
            <form action="modificar/{$producto->id}" method="POST" enctype="multipart/form-data">
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
                <div class="mb-3">
                    <label for="formFile" class="form-label">Imagen</label>
                    <input class="form-control" type="file" id="formFile" name="imagen">
                </div>
                <a href="panel" class="btn btn-outline-danger">Cancelar</a>
                <button class="btn btn-outline-success" type="submit">Guardar</button>
            </form>
        </div>
    </div>
  </div>
{include 'templates/footer.tpl'}