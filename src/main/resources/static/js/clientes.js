/**
 * Created by saleta on 10/9/2016.
 */
$( document ).ready(function() {


    $('.buscar-clientes').click(function () {
        $.get("/listado_clientes/", function(data, status){
            $('.clientes').empty();
            data.forEach(function (sub) {
                $('.clientes').append($('<option>', {
                    value: sub.cedula,
                    text: sub.nombre +" " +sub.apellido
                }));
            })
        });
    });


});