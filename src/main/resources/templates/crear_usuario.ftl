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

    <h1>Nuevo Usuario</h1>
    <form action="#" th:action="@{/crear_usuario/}"  method="POST">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <div class = "panel panel-default">
            <div class = "panel-body">
                <input type="hidden" value="false" class="form-control" id="cedula" name="administrador" required >
                <div class="row">
                    <div class ="col-md-12">
                        <div class="form-group">
                            <label for="cedula">Nombre de Usuario:</label>
                            <input type="text" class="form-control" id="cedula" name="cedula" th:field="*{cedula}" required >
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class ="col-md-12">
                        <div class="form-group">
                            <label for="password">Contraseña</label>
                            <input type="password" class="form-control" id="password" name="password" required>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class ="col-md-12">
                        <div class="form-group">
                            <label for="nombre">Nombre</label>
                            <input type="text" class="form-control" id="nombre" name="nombre" required>
                        </div>
                    </div>
                </div>
                <br>
                <div class="row">
                    <div class ="col-md-12">
                        <div class="form-group">
                            <label for="apellido">Apellido</label>
                            <input type="text" class="form-control" id="apellido" name="apellido" required>
                        </div>
                    </div>
                    <select class="form-control" name="roles" multiple="multiple" >
                        <option value="ROLE_ADMIN">Administrador</option>
                        <option value="ROLE_MANAGER">Manager</option>
                        <option value="ROLE_CAJERO">Cajero</option>
                    </select>

                <br>
                <button type="submit" name="action" id="btnCrearUsuario" value="crearUsuario" class="btn btn-primary">Crear</button>

            </div>
        </div>

    </form>
</div>

</body>
</html>