<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org" xmlns="http://www.w3.org/1999/html">
<head>
    <!-- Bootstrap -->
    <link href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" rel="stylesheet">
    <title>Login Customizado.....</title>
</head>
<body>
<#include "/adminHeader.ftl">
<div class="container" id="contenedorCrearUsuario">

    <h1>Nuevo Usuario</h1>
    <form action="#" th:action="@{/crear_rol/}" th:object="${rol}" method="POST">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <div class = "panel panel-default">
            <div class = "panel-body">

                <div class="row">
                    <div class ="col-md-12">
                        <div class="form-group">
                            <label for="clientes">Puede administrar clientes</label>
                            <input type="checkbox" name="clientes">
                            <label for="cedula">Puede administrar equipos</label>
                            <input type="checkbox" name="equipos">
                            <label for="cedula">Puede registrar alquileres</label>
                            <input type="checkbox" name="alquilar">
                            <label for="cedula">Puede ver alquileres</label>
                            <input type="checkbox" name="listado">
                        </div>
                    </div>
                </div>




                <br>
                <button type="submit" name="action" id="btnCrearUsuario" value="crearUsuario" class="btn btn-primary">Crear</button>

            </div>
        </div>

    </form>
</div>

</body>
</html>