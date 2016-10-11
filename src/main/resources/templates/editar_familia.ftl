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

    <h1><@spring.message "editar_familia" /></h1>
    <h4><@spring.message "sub_familias" /> ${familia.nombre}:</h4>
    <div class="list-group">
    <#list sub_familias as s>
        <li class="list-group-item">${s.nombre}</li>
    </#list>
    </div>

    <!-- Button trigger modal -->
    <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
    <@spring.message "nueva_subfamilia" />
    </button>


</div>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form action="#"   th:action="@{/familias/editar_familia}"   method="POST">
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                <div class = "panel panel-default">
                    <div class = "panel-body">
                        <label for="nombre"><@spring.message "nombre" />:</label>
                        <input type="text" class="form-control" id="familia" name="nombre">
                        <input type="hidden" name="familia_id" value="${familia.id}"/>
                        <br>
                        <button type="submit" name="action" id="btnCrearUsuario" value="crearUsuario" class="btn btn-primary"><@spring.message "agregar" /></button>

                    </div>
                </div>

            </form>
        </div>
    </div>
</div>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="/webjars/jquery/3.1.0/jquery.min.js"></script>
<script src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>

</body>
</html>