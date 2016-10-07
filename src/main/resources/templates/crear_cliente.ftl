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

    <h1><@spring.message "nuevo_cliente" /></h1>
    <form action="#"  enctype='multipart/form-data' th:action="@{/crear_rol/}" th:object="${cliente}"  method="POST">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <div class = "panel panel-default">
            <div class = "panel-body">
                <form id="upload-file-form">
                    <label for="correo"><@spring.message "cedula" />:</label>
                    <input type="text" class="form-control" id="cedula" name="cedula">
                    <label for="correo"><@spring.message "nombre" />:</label>
                    <input type="text" class="form-control" id="nombre" name="nombre">
                    <label for="correo"><@spring.message "apellido" />:</label>
                    <input type="text" class="form-control" id="apellido" name="apellido">
                    <label for="correo"><@spring.message "correo" />:</label>
                    <input type="email" class="form-control" id="email" name="correo">


                    <label for="upload-file-input"><@spring.message "foto" />:</label>
                    <input id="upload-file-input" type="file" name="uploadfile" accept="*" />
                </form>





                <br>
                <button type="submit" name="action" id="btnCrearUsuario" value="crearUsuario" class="btn btn-primary"><@spring.message "crear" /></button>

            </div>
        </div>

    </form>
</div>
<script src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>
</body>
</html>