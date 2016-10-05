<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org" xmlns="http://www.w3.org/1999/html">
<head>
    <!-- Bootstrap -->
    <link href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" rel="stylesheet">
    <title>Login Customizado.....</title>
</head>
<body>
<#include "/header.ftl">
<div class="container" id="contenedorCrearUsuario">

    <h1>Nuevo Usuario</h1>
    <form    th:action="@{/editar_cliente}"   method="POST">
        <input type="hidden" name="${_csrf.parameterName}" th:object="${cliente}" value="${_csrf.token}"/>
        <div class = "panel panel-default">
            <div class = "panel-body">


                    <label for="correo">Nombre:</label>
                    <input type="text" class="form-control" id="nombre" name="nombre" value="${cliente.nombre}" >
                    <label for="correo">Apellido:</label>
                    <input type="text" class="form-control" id="apellido" name="apellido" value="${cliente.apellido}">
                    <label for="correo">Correo:</label>
                    <input type="email" class="form-control" id="email" name="correo" value="${cliente.correo}" >
                    <input type="hidden" name="ruta_imagen" value="${cliente.ruta_imagen}"/>

                     <br>
                <button type="submit" name="action" id="btnCrearUsuario" value="crearUsuario" class="btn btn-primary">Editar</button>
            </div>
        </div>

    </form>
</div>

</body>
</html>