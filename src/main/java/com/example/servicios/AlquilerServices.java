package com.example.servicios;

import com.example.entidades.Alquiler;
import com.example.entidades.Cliente;
import com.example.repositorio.AlquilerRepository;
import com.example.repositorio.ClienteRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by vacax on 20/09/16.
 */
@Service
public class AlquilerServices {

    //Inyectando el repositorio
    @Autowired
    private AlquilerRepository alquilerRepository;

    public long cantidadUsuario(){
        return alquilerRepository.count();
    }


    @Transactional
    public Alquiler creacionAlquiler(Alquiler alquiler){
        alquilerRepository.save(alquiler);
        return alquiler;
    }



    public List<Alquiler> todosAlquileres(){
        return alquilerRepository.findAll();
    }

    public Alquiler getAlquiler(int id){
        return alquilerRepository.findById(id);
    }


}
