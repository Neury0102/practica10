<!DOCTYPE html>
<html x lang="en">

<head>
    <link href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>

<#include "/header.ftl">

<div class="container">
    <h1><@spring.message "equipos" /></h1>

    <table class="table table-bordered">
        <thead>
        <tr>
            <th><@spring.message "foto" /></th>
            <th><@spring.message "nombre" /></th>
            <th><@spring.message "familia" /></th>
            <th><@spring.message "sub_familia" /></th>
            <th><@spring.message "disponible" /></th>
        </tr>
        </thead>
        <tbody>
        <a href="crear_equipo/"><@spring.message "nuevo" />...</a>
        <#list equipos as u>
        <tr class="row-click" data-href="/administracion/editar/${u.id}">
            <td width="50px"><a href="editar_equipo?id=${u.id}"><img style="width: 150px;height: 100px;" class="img-circle" src="/archivos/${u.ruta_imagen}"/></a> </td>
            <td>${u.nombre}</td>
            <td>${u.subFamilia.familia.nombre}</td>
            <td>${u.subFamilia.nombre}</td>
            <td>${u.cantidad}</td>
        </tr>
        </#list>

        </tbody>
    </table>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="/webjars/jquery/3.1.0/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>
    </div>

</body>

</html>