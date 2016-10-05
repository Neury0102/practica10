package com.example.servicios;

import com.example.entidades.Familia;
import com.example.entidades.Rol;
import com.example.repositorio.FamiliaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by vacax on 20/09/16.
 */
@Service
public class FamiliaServices {

    //Inyectando el repositorio
    @Autowired
    private FamiliaRepository familiaRepository;

    public long cantidadUsuario(){
        return familiaRepository.count();
    }


    @Transactional
    public Familia creacionFamilia(Familia familia){
        familiaRepository.save(familia);
        return familia;
    }



    public List<Familia> todasFamilias(){
        return familiaRepository.findAll();
    }


}
