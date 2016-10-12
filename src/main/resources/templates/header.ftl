<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org" xmlns="http://www.w3.org/1999/html">
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
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><@spring.message "alquiler" /> <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li class="buscar-clientes"><a data-toggle="modal" data-target="#myModal"><@spring.message "realizar_alquiler" /></a></li>
                            <li class="buscar-clientes"><a data-toggle="modal" data-target="#myModal2"><@spring.message "devolver_equipos" /></a></li>
                            <li class="buscar-clientes"><a data-toggle="modal" data-target="#myModal10"><@spring.message "alquileres_por_cliente" /></a></li>
                            <li><a href="/alquileres/no_devueltos/"><@spring.message "equipos_no_devueltos" /></a></li>
                            <li><a href="/alquileres/ver_graficos/"><@spring.message "graficos" /></a></li>

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

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form action="/alquileres/redirect/"   th:action="@{/alquileres/redirect/}"   method="POST">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <div class = "panel panel-default">
                    <div class = "panel-body">
                        <label for="nombre"><@spring.message "nombre" />:</label>
                        <select name="clientes" class="form-control clientes"  >

                        </select>
                        <br>
                        <button type="submit" name="action" id="btnCrearUsuario" value="crearUsuario" class="btn btn-primary">Continuar</button>

                    </div>
                </div>

            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="myModal2" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form action="/alquileres/redirect_devolver/"   th:action="@{/alquileres/redirect_devolver/}"   method="POST">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <div class = "panel panel-default">
                    <div class = "panel-body">
                        <label for="nombre"><@spring.message "nombre" />:</label>
                        <select name="clientes" class="form-control clientes" >

                        </select>
                        <br>
                        <button type="submit" name="action" id="btnCrearUsuario" value="crearUsuario" class="btn btn-primary">Continuar</button>

                    </div>
                </div>

            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="myModal10" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form action="/alquileres/redirect_alq_clientes/"   th:action="@{/alquileres/redirect_alq_clientes/}"   method="POST">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <div class = "panel panel-default">
                    <div class = "panel-body">
                        <label for="nombre"><@spring.message "nombre" />:</label>
                        <select name="clientes" class="form-control clientes" >

                        </select>
                        <br>
                        <button type="submit" name="action" id="btnCrearUsuario" value="crearUsuario" class="btn btn-primary">Continuar</button>

                    </div>
                </div>

            </form>
        </div>
    </div>
</div>
<script src="/webjars/jquery/3.1.0/jquery.min.js"></script>
<script src="/js/clientes.js"></script>





