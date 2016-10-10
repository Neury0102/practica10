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

    <h1><@spring.message "alquilar_equipo" /></h1>
    <form action="/alquileres/alquilar/" id="form-alquiler"  method="POST">
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>

        <div class = "panel panel-default">
            <div class = "panel-body">
                <img style="margin-left: 37%; width: 250px; height: 160px"  class="img-circle img-responsive" src="/archivos/${equipo.ruta_imagen}"/>
                <br/>
                <div class="row">
                   <div class="col-lg-4 col-lg-offset-4">
                       <table class="table-striped table-bordered table">
                           <thead>

                           </thead>
                           <tbody>
                           <tr>
                               <th scope="row"><@spring.message "nombre" /></th>
                               <td>${equipo.nombre}</td>
                           </tr>
                           <tr>
                               <th scope="row"><@spring.message "familia" /></th>
                               <td>${equipo.subFamilia.familia.nombre}</td>
                           </tr>
                           <tr>
                               <th scope="row"><@spring.message "sub_familia" /></th>
                               <td>${equipo.subFamilia.nombre}</td>
                           </tr>
                           <tr>
                               <th scope="row"><@spring.message "costo" /> por dia</th>
                               <td>${equipo.costoDia}</td>
                           </tr>
                           <tr>
                               <th scope="row"><@spring.message "disponible" /></th>
                               <td>${equipo.cantidad}</td>
                           </tr>
                           </tbody>
                       </table>
                   </div>
               </div>



                    <input type="hidden" id="equipo"  name="equipo" value="${equipo.id}">
                    <input type="hidden"  name="cliente" value="${cliente}">


                <br>
                <label id="mensaje-validacion" style="color: red"></label><br>
                <span id="submit-alquiler"   value="crearUsuario" class="btn btn-primary"><@spring.message "alquilar" /></span>

            </div>
        </div>

    </form>
</div>
<script src="/webjars/jquery/3.1.0/jquery.min.js"></script>
<script src="/js/alquiler.js"></script>
<script src="/webjars/bootstrap/3.3.7-1/js/bootstrap.min.js"></script>
</body>
</html>