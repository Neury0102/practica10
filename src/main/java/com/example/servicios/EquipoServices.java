package com.example.servicios;

import com.example.entidades.Equipo;
import com.example.entidades.Familia;
import com.example.repositorio.EquipoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by vacax on 20/09/16.
 */
@Service
public class EquipoServices {

    //Inyectando el repositorio
    @Autowired
    private EquipoRepository equipoRepository;

    public long cantidadUsuario(){
        return equipoRepository.count();
    }


    @Transactional
    public Equipo creacionEquipo(Equipo familia){
        equipoRepository.save(familia);
        return familia;
    }



    public List<Equipo> todosEquipos(){
        return equipoRepository.findAll();
    }

    public Equipo getEquipo(int id){return  equipoRepository.findById(id);}


}
