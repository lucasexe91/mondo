{include 'templates/header.tpl'}
  <br>  
  <div class="container-md">
    <div class="d-flex justify-content-center">
      <img src="images/logomondo.png"  alt="mondo" style="width: 300px;">
    </div>
    <br>
    <br>
    <div class="clearfix">
      <div class="d-flex justify-content-center">
        <h1>{$producto->nombre}</h1>
      </div>
      <div class="d-flex justify-content-center">
        <img class="col-md-6 float-md-end mb-3 ms-md-3" src="{$producto->imagen}" style="width: 300px;" alt="...">
      </div>
      <div class="d-flex justify-content-center">
        <h4>{$producto->descripcion}</h4>
      </div>
      <br>
      <h5>Modo de uso: <small class="text-muted">{$producto->mododeuso}</small></h5>
      <h5>Composición: <small class="text-muted">{$producto->composicion}</small></h5>
      <h5>Advertencias: <small class="text-muted">{$producto->advertencias}</small></h5>
      <h5>Caducidad: <small class="text-muted">{$producto->caducidad}</small></h5>
      <h5>Otra información: <small class="text-muted">{$producto->otrainfo}</small></h5>
    </div>
    <br>
    <div class="d-flex justify-content-center">
      <img src="images/footermondo.png"  alt="footermondo" style="width: 400px;">
    </div>
    <br>
    {literal}
    <div class="d-flex justify-content-center">
      <a style="text-decoration:none; color:black;" target="_blank" href="https://www.instagram.com/mondocosmeticanat/">@mondocosmeticanat</a>
    </div>
    <div class="d-flex justify-content-center">
      <a style="text-decoration:none; color:black;" target="_blank" href="https://www.mondocosmeticanatural.com.ar">www.mondocosmeticanatural.com.ar</a>
    </div>
    {/literal}
    <br>
  </div>
  
  
{include 'templates/footer.tpl'}