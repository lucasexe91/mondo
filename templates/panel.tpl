{include 'templates/header.tpl'}
    <nav class="navbar sticky-top navbar-expand-lg navbar-light" style="background-color: #f5e3fd;">
      <div class="container-fluid">
        <a class="navbar-brand" href="home"><img src="images/Logo.jpg" alt="" width="30" height="24" class="d-inline-block align-text-top"> Mondo</a>
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
            <input name="titulo" class="form-control me-2" type="search" placeholder="Buscar por nombre" aria-label="Search">
            <button class="btn btn-outline-dark" type="submit">Buscar</button>
          </form>
        </div>
      </div>
</nav>
{if isset($username) && $username }
    <div class="container">
    <div class="row justify-content-md-center">
        {foreach from = $productos item=prod}
          <div class="col gy-2">        
            <div class="card" style="width: 18rem;">
              <img class="w-80 p-3" src="{$prod->imagen}" class="card-img-top" alt="...">
              <div class="card-body">
                <h5 class="card-title">{$prod->nombre}</h5>
                <div class="btn-group" role="group">
                    <a href="producto/{$prod->id}" class="btn btn-outline-success">Ver producto</a>
                    <a href="editar/{$prod->id}" class="btn btn-outline-success">Editar</a>
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