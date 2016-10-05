<!DOCTYPE html>
<html x lang="en">

<head>
    <link href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>

<#include "/header.ftl">

<div class="container">
    <h1>Clientes</h1>
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>Foto</th>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Cedula</th>
            <th>Correo</th>
        </tr>
        </thead>
        <tbody>
        <a href="crear_cliente/">Nuevo...</a>
        <#list clientes as u>
        <tr class="row-click" data-href="/administracion/editar/${u.cedula}">
            <td width="50px"><a href="editar_cliente?cedula=${u.cedula}"><img style="width: 150px;height: 100px;" class="img-circle" src="/${u.ruta_imagen}"/></a> </td>
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