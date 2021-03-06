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

    <h1><@spring.message "editar_equipo" /></h1>
    <form action="#"  th:action="@{/editar_equipo}" th:object="${equipo}"  method="POST">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
        <div class = "panel panel-default">
            <div class = "panel-body">

                    <label for="correo"><@spring.message "nombre" />:</label>
                    <input type="text" class="form-control" id="nombre" name="nombre" value="${equipo.nombre}">
                    <label for="correo"><@spring.message "disponible" />:</label>
                    <input type="text" class="form-control" id="cantidad" name="cantidad" value="${equipo.cantidad}">
                    <label for="correo"><@spring.message "costo" />:</label>
                    <input type="text" class="form-control" id="costoDia" name="costoDia" value="${equipo.costoDia}">
                    <label for="correo"><@spring.message "familia" />:</label>
                    <select class="form-control" id="familia">
                        <#list familias as familia>
                        <option value="${familia.id}" <#if equipo.subFamilia.familia.id == familia.id >selected</#if>> ${familia.nombre}</option>
                        </#list>
                    </select>
                    <label for="correo"><@spring.message "sub_familia" />:</label>
                    <select name="sub-familia" class="form-control" id="sub-familia">

                    </select>
                    <input id="sub" type="hidden" value="${equipo.subFamilia.id}">
                    <input id="sub_text" type="hidden" value="${equipo.subFamilia.nombre}">
                    <input type="hidden"name="ruta_imagen" value="${equipo.ruta_imagen}" />


                <br>
                <button type="submit" name="action" id="btnCrearUsuario" value="crearUsuario" class="btn btn-primary"><@spring.message "editar" /></button>

            </div>
        </div>

    </form>
</div>
<script src="/webjars/jquery/3.1.0/jquery.min.js"></script>
<script src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>
<script src="/js/custom.js"></script>
</body>
</html>