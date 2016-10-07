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

    <h1><@spring.message "nuevo_equipo" /></h1>
    <form action="#"  enctype='multipart/form-data' th:action="@{/familias/crear_familia/}" th:object="${familia}"  method="POST">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <div class = "panel panel-default">
            <div class = "panel-body">
                <label for="nombre"><@spring.message "nombre" /></label>
                <input type="text" class="form-control" id="familia" name="nombre">
                <br>
                <button type="submit" name="action" id="btnCrearUsuario" value="crearUsuario" class="btn btn-primary"><@spring.message "crear" /></button>

            </div>
        </div>

    </form>
</div>

</body>
<script src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>
</html>