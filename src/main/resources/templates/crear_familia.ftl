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
    <form action="#"  enctype='multipart/form-data' th:action="@{/crear_rol/}" th:object="${cliente}"  method="POST">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <div class = "panel panel-default">
            <div class = "panel-body">
                <form id="upload-file-form">
                    <label for="correo">Cedula:</label>
                    <input type="text" class="form-control" id="cedula" name="cedula">
                    <label for="correo">Nombre:</label>
                    <input type="text" class="form-control" id="nombre" name="nombre">
                    <label for="correo">Apellido:</label>
                    <input type="text" class="form-control" id="apellido" name="apellido">
                    <label for="correo">Correo:</label>
                    <input type="email" class="form-control" id="email" name="correo">


                    <label for="upload-file-input">Foto de perfil:</label>
                    <input id="upload-file-input" type="file" name="uploadfile" accept="*" />
                </form>





                <br>
                <button type="submit" name="action" id="btnCrearUsuario" value="crearUsuario" class="btn btn-primary">Crear</button>

            </div>
        </div>

    </form>
</div>

</body>
</html>