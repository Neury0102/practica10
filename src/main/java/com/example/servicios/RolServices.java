package com.example.servicios;

import com.example.entidades.Rol;
import com.example.entidades.Usuario;
import com.example.repositorio.RolRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by vacax on 20/09/16.
 */
@Service
public class RolServices {

    //Inyectando el repositorio
    @Autowired
    private RolRepository rolRepository;

    public long cantidadUsuario(){
        return rolRepository.count();
    }


    @Transactional
    public Rol creacionRol(Rol rol){
        rolRepository.save(rol);
        return rol;
    }



    public List<Rol> todosRoles(){
        return rolRepository.findAll();
    }
    public List<Rol> rolesUsuario(Usuario usuario){
        return rolRepository.findAllByUsuario(usuario);
    }


}
