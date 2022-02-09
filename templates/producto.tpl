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
    </div>
  </div>
{include 'templates/footer.tpl'}