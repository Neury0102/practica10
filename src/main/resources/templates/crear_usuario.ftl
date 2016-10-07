<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <!-- Bootstrap -->
    <link href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" rel="stylesheet">
    <title>Login Customizado.....</title>
</head>
<body>
<#include "/adminHeader.ftl">
<div class="container" id="contenedorCrearUsuario">

    <h1><@spring.message "nuevo_usuario" /></h1>
    <form action="#" th:action="@{/crear_usuario/}" th:object="${usuario}"  method="POST">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <div class = "panel panel-default">
            <div class = "panel-body">
                <div class="row">
                    <div class ="col-md-12">
                        <div class="form-group">
                            <label for="cedula"><@spring.message "nombre_usuario" />:</label>
                            <input type="text" class="form-control" id="username" name="username"  required >
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class ="col-md-12">
                        <div class="form-group">
                            <label for="password"><@spring.message "contrasena" /></label>
                            <input type="password" class="form-control" id="password" name="password" required>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class ="col-md-12">
                        <div class="form-group">
                            <label for="nombre"><@spring.message "nombre" /></label>
                            <input type="text" class="form-control" id="nombre" name="nombre" required>
                        </div>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class ="col-md-12">
                        <div class="form-group">
                            <label for="apellido"><@spring.message "apellido" /></label>
                            <input type="text" class="form-control" id="apellido" name="apellido" required>
                        </div>
                    </div>
            </div>
                <label for="roles"><@spring.message "rol" /></label>
                <select id="roles" class="form-control" name="roles" multiple="multiple" >
                    <option value="ROLE_ADMIN">Administrador</option>
                    <option value="ROLE_MANAGER">Manager</option>
                    <option value="ROLE_CAJERO">Cajero</option>
                </select>
                <br>
                <button type="submit" name="action" id="btnCrearUsuario" value="crearUsuario" class="btn btn-primary"><@spring.message "crear" /></button>
        </div>

    </form>
</div>
<script src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>
</body>
</html>