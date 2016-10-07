<div class="container">
    <nav class="navbar navbar-default" >
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="/zona_admin/"><@spring.message "administracion" /></a>
            </div>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a href="/zona_admin/"><@spring.message "usuarios" /></a></li>
                    <li><a href="/zona_admin/familias/"><@spring.message "familia_equipos" /></a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="/../">Main</a></li>
                    <li>
                        <form action="/cerrarsesion/" method="POST" class="form-signin">
                            <button style="border-radius: 30px; background-color:transparent; border: snow; margin-top: 13px;  " type="submit"><@spring.message "cerrar_sesion" /></button>
                        </form></li>
                </ul>
            </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
    </nav>
</div>

