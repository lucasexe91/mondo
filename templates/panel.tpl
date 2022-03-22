{include 'templates/header.tpl'}
    <nav class="navbar sticky-top navbar-expand-lg navbar-light" style="background-color: #f5e3fd;">
      <div class="container-fluid">
        <a class="navbar-brand" href="panel"><img src="images/Logo.png" alt="" width="150" height="60" class="d-inline-block align-text-top"></a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          {if isset($username) && $username }
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link" href="logout">Cerrar sesión</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="nuevo">Crear producto nuevo</a>
            </li>
          </ul>
          {else}
            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            </ul>
          {/if}
          <form action="buscar" method="POST" class="d-flex">
            <input name="nombre" class="form-control me-2" type="search" placeholder="Buscar por nombre" aria-label="Search">
            <button class="btn btn-outline-dark" type="submit">Buscar</button>
          </form>
        </div>
      </div>
</nav>
{if isset($username) && $username }
  <br>
    <div class="container">
    <div class="row row-cols-1 row-cols-md-3 g-4">
        {foreach from = $productos item=prod}
          <div class="col">     
            <div class="card bg-light text-white" >
              <img src="{$prod->imagen}" class="card-img-top" alt="...">
              <div class="card-img-overlay">
                <h5 class="card-title" style="text-shadow: 1px 1px 2px black">{$prod->nombre}</h5>
              </div>
              <div class="card-footer">
                <div class="btn-group" role="group">
                    <a href="producto/{$prod->id}" class="btn btn-outline-success">Ver</a>
                    <a href="editar/{$prod->id}" class="btn btn-outline-success">Editar</a>
                    <a href="qr/{$prod->id}" class="btn btn-outline-success">Generar QR!</a>
                    <a href="borrar/{$prod->id}" class="btn btn-outline-danger">Borrar</a>
                </div>
              </div>
            </div>
          </div>
        {/foreach}
    </div>
</div>
<br>
{/if}
{include 'templates/footer.tpl'}