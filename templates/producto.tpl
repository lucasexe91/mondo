{include 'templates/header.tpl'}
  <br>  
  <div class="container-md">
    <div class="row justify-content-md-center">
      <img src="images/mondo.jpg"  alt="mondo" style="width: 400px;">
    </div>
    <br>
    <br>
    <div class="clearfix">
      <img class="col-md-6 float-md-end mb-3 ms-md-3" src="{$producto->imagen}" style="width: 400px;" alt="...">
      <h1>{$producto->nombre}</h5>
      <h5>Composición</h5>
      <p class="card-text">{$producto->composicion}</p>
      <h5>Modo de uso</h5>
      <p class="card-text">{$producto->mododeuso}</p>
      <h5>Descripción del producto</h5>
      <p class="card-text">{$producto->descripcion}</p>
    </div>
  </div>
  <br>
  <br>
{include 'templates/footer.tpl'}