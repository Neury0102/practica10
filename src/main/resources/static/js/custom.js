/**
 * Created by saleta on 10/5/2016.
 */

$( document ).ready(function() {
    $.get("/profesores?id="+ $('#familia').val(), function(data, status){
        $('#sub-familia').empty();
        data.forEach(function (sub) {

            var selected = parseInt(sub.id) === parseInt($('#sub').val());
            console.log($('#sub').val());
            console.log(sub.id);
            $('#sub-familia').append($('<option>', {
                value: sub.id,
                text: sub.nombre,
                selected: selected
            }));
        })
    });

    $('#familia').on('change', function() {
        $.get("/profesores?id="+ $('#familia').val(), function(data, status){
            $('#sub-familia').empty();
            data.forEach(function (sub) {
                var html = '<option value="'+data.id+'" >'+data.nombre+'</option>';
                $('#sub-familia').append($('<option>', {
                    value: sub.id,
                    text: sub.nombre
                }));
            })
        });
    });


});
