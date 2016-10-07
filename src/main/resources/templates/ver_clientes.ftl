<!DOCTYPE html>
<html x lang="en">

<head>
    <link href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>

<#include "/header.ftl">

<div class="container">
    <h1><@spring.message "clientes" /></h1>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th><@spring.message "foto" /></th>
            <th><@spring.message "nombre" /></th>
            <th><@spring.message "apellido" /></th>
            <th><@spring.message "cedula" /></th>
            <th><@spring.message "correo" /></th>
        </tr>
        </thead>
        <tbody>
        <a href="crear_cliente/"><@spring.message "nuevo" /></a>
        <#list clientes as u>
        <tr class="row-click" data-href="/administracion/editar/${u.cedula}">
            <td width="50px"><a href="editar_cliente?cedula=${u.cedula}"><img style="width: 150px;height: 100px;" class="img-circle" src="/archivos/${u.ruta_imagen}"/></a> </td>
            <td>${u.nombre}</td>
            <td>${u.apellido}</td>
            <td>${u.cedula}</td>
            <td>${u.correo}</td>

        </tr>
        </#list>

        </tbody>
    </table>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="/webjars/jquery/3.1.0/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>

</body>

</html>