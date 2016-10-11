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
            <th><@spring.message "nombre" /></th>
            <th><@spring.message "familia" /></th>
            <th><@spring.message "sub_familia" /></th>
            <th><@spring.message "disponible" /></th>
        </tr>
        </thead>
        <tbody>
        <#list alquileres as u>
        <tr class="row-click" data-href="/administracion/editar/${u.id}">
            <td>${u.equipo.nombre}</td>
            <td>${u.equipo.subFamilia.familia.nombre}</td>
            <td>${u.factura.fecha}</td>
            <td><span id="submit-devolver"   value="crearUsuario" class="btn btn-primary"  data-toggle="modal" data-target="#myModal3"><@spring.message "devolver" /></span></td>
            <div class="modal fade" id="myModal3" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <form action="/alquileres/redirect/"   th:action="@{/alquileres/redirect/}"   method="POST">
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                            <div class = "panel panel-default">
                                <div class = "panel-body">
                                    <label for="nombre"><@spring.message "confirmacion" /></label>
                                    <input type="hidden" value="${u.equipo.id}" name="equipo">

                                    </select>
                                    <br>
                                    <button type="submit" name="action" id="btnCrearUsuario" value="crearUsuario" class="btn btn-primary"><@spring.message "devolver" /></button>
                                    <button type="button" class="btn btn-danger" data-dismiss="modal"><@spring.message "volver" /></button>

                                </div>
                            </div>

                        </form>
                    </div>
                </div>
            </div>
        </tr>
        </#list>

        </tbody>
    </table>


    </div>


<script src="/webjars/jquery/3.1.0/jquery.min.js"></script>
<script src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>

</body>

</html>