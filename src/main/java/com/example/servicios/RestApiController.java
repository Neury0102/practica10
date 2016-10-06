package com.example.servicios;

import com.example.entidades.Familia;

import com.google.gson.Gson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * Clase que representa un controlador para trabajar con el API REST.
 * Created by vacax on 20/09/16.
 */
@RestController
public class RestApiController {

    //Inyección de dependecia.
    @Autowired
    private SubFamiliaServices subFamiliaServices;

    @Autowired
    private FamiliaServices familiaServices;





    @RequestMapping(value ="/profesores",method = RequestMethod.GET, produces = "application/json")
    public String cantidadProfesores(@RequestParam("id") int familia_id){
        Familia familia = familiaServices.getFamilia(familia_id);
        Gson gson = new Gson();
        String result = gson.toJson(subFamiliaServices.subFamiliasFamilia(familia));
        return result;
    }




}
