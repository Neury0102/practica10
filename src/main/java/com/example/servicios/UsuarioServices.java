package com.example.servicios;

import com.example.entidades.Rol;
import com.example.entidades.Usuario;
import com.example.repositorio.UsuarioRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by vacax on 20/09/16.
 */
@Service
public class UsuarioServices {

    //Inyectando el repositorio
    @Autowired
    private UsuarioRepository usuarioRepository;

    @Autowired
    private RolServices rolServices;

    public long cantidadUsuario(){
        return usuarioRepository.count();
    }


    @Transactional
    public Usuario creacionUsuario(Usuario usuario){
        usuarioRepository.save(usuario);
        return usuario;
    }

    @Transactional
    public void crearAdmin(){
        List<Usuario> usuarios = usuarioRepository.findAllByUsername("admin");
        if(usuarios.size()<1){
            Usuario usuario =  new Usuario();
            usuario.setApellido("Admin");
            usuario.setNombre("Administrador");
            usuario.setUsername("admin");
            usuario.setPassword("1234");
            creacionUsuario(usuario);
            Rol rol = new Rol();
            rol.setUsuario(usuario);
            rol.setRol("ROLE_ADMIN");
            rolServices.creacionRol(rol);
        }
    }
    public List<Usuario> profesoresConApellidos(){

        return usuarioRepository.findAllByApellidoNotNull();
    }


    public List<Usuario> listaProfesorInicia(String nombre){
        System.out.println("Nombre recibido: "+nombre);
        return usuarioRepository.findAllByNombreStartingWith(nombre);
    }

    public List<Usuario> listaProfesorIniciaIgnorandoCase(String nombre){
        System.out.println("Nombre recibido: "+nombre);
        return usuarioRepository.findAllByNombreStartingWithIgnoreCase(nombre);
    }

    public List<Usuario> todosUsuarios(){
        return usuarioRepository.findAll();
    }

   /* public Usuario profesorPorCedula(String cedula) {
        return usuarioRepository.consultaProfesor(cedula);
    }*/
}
