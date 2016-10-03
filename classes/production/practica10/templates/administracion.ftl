<!DOCTYPE html>
<html x lang="en">

<head>
    <link href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>

<#include "/adminHeader.ftl">

<div class="container">
    <h1>Usuarios</h1>
    <#--<table class="table table-bordered">-->
        <#--<thead>-->
        <#--<tr>-->
            <#--<th>Username</th>-->
            <#--<th>Nombre</th>-->
            <#--<th>Administrador</th>-->
            <#--<th>Autor</th>-->
        <#--</tr>-->
        <#--</thead>-->
        <#--<tbody>-->
        <#--<#list usuarios as u>-->
        <#--<tr class="row-click" data-href="/administracion/editar/${u.username}">-->
            <#--<td>${u.username}</td>-->
            <#--<td>${u.nombre}</td>-->
            <#--<td>${u.administrador?string}</td>-->
            <#--<td>${u.autor?string}</td>-->
        <#--</tr>-->
        <#--</#list>-->

        <#--</tbody>-->
    <#--</table>-->

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="/webjars/jquery/3.1.0/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>

</body>

</html>