/**
 * Created by saleta on 10/5/2016.
 */

$( document ).ready(function() {


        $.get("/sub_familias/", function(data, status){
                var headers = [];
                var values = [];
            data.forEach(function (d) {
                headers.push(d[1]);
                values.push(d[0]);

            });
            var max = Math.max(...values);
            console.log(max);
            $("#demo").jChart({
                name: "Promedios de duracion de alquiler por subfamilia",
                headers: headers,
                values: values,
                footers: [1,max/4,max/2,max*(3/4),max],



                colors: ["#1000ff","#006eff","#00b6ff","#00fff6","#00ff90"]
            });



        });




});
