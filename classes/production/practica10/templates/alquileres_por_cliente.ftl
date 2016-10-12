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

    <h1>Historial de ${cliente}</h1>
    <form action="/alquileres/facturar/" id="form-factura"  method="POST">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

        <div class = "panel panel-default">
            <div class = "panel-body">
                <br/>
                <div class="row">
                   <div class="col-lg-6 col-lg-offset-3">
                       <table class="table-striped table-bordered table">
                           <thead>
                           <tr>

                               <th>Equipo</th>
                               <th>Fecha</th>
                               <th>Estado</th>
                           </tr>
                           </thead>
                           <tbody>
                           <#list alquileres as u>
                           <tr>
                               <td>${u.equipo.nombre}</td>
                               <td>${u.factura.fecha}</td>
                               <td><#if u.devuelto>
                                   Devuelto
                                   <#else >
                                   Alquilado
                               </#if></td>
                           </tr>
                           </#list>
                           </tbody>
                       </table>
                       <br>
                   </div>
               </div>
                <br>

            </div>
        </div>

    </form>
</div>
<script src="/webjars/jquery/3.1.0/jquery.min.js"></script>
<script src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>
</body>
</html>