<!DOCTYPE html>
<html x lang="en">

<head>
    <link href="/webjars/bootstrap/3.3.7-1/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>

<#include "/adminHeader.ftl">

<div class="container">
    <h1><@spring.message "familia_equipos" /></h1>

        <a href="crear_familia/"><@spring.message "nuevo" />...</a>
        <div class="list-group">
        <#list familias as u>
                <a href="editar_familia?id=${u.id}" class="list-group-item">${u.nombre}</a>
        </#list>
        </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="/webjars/jquery/3.1.0/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>

</body>

</html>