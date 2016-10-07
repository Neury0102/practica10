<div class="container">
    <nav class="navbar navbar-default" >
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="/">Practica 10</a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><@spring.message "gestion" /> <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="/clientes/"><@spring.message "clientes" /></a></li>
                            <li><a href="/equipos/"><@spring.message "equipos" /></a></li>

                        </ul>
                    </li>
                </ul>
                <ul class="nav navbar-nav navbar-right">

                    <li>
                        <form action="/cerrarsesion/" method="POST" class="form-signin">
                            <button style="border-radius: 30px; background-color:transparent; border: snow; margin-top: 13px;  " type="submit"><@spring.message "cerrar_sesion" /></button>
                        </form></li>


                </ul>
            </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
    </nav>
</div>

