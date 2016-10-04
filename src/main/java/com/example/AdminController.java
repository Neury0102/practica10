package com.example;

import com.example.entidades.Rol;
import com.example.entidades.Usuario;
import com.example.servicios.RolServices;
import com.example.servicios.UsuarioServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by saleta on 10/2/2016.
 */
@Controller()
@RequestMapping("/zona_admin")
public class AdminController {
    @Autowired
    private UsuarioServices usuarioServices;

    @Autowired
    private RolServices rolServices;

    @RequestMapping("/")
    public String index(Model model){
        System.out.print(usuarioServices.cantidadUsuario());
        model.addAttribute("usuarios",usuarioServices.todosUsuarios());


        return "/administracion";
    }



    @RequestMapping("/crear_usuario/")
    public String crearUsuario(Model model){
        model.addAttribute("usuario", new Usuario());
        model.addAttribute("allRoles", rolServices.todosRoles());
        return "/crear_usuario";
    }

    @PostMapping("/crear_usuario/")
    @Transactional
    public String crearUsuarioPost(
            @RequestParam("roles") String[] roles, @RequestParam("username") String usuario,
            @RequestParam("password") String password, @RequestParam("nombre") String nombre,
            @RequestParam("apellido") String apellido
            ){
        Usuario u = new Usuario();
        u.setUsername(usuario);
        u.setNombre(nombre);
        u.setApellido(apellido);
        u.setPassword(password);

        u = usuarioServices.creacionUsuario(u);

        for(String rol: roles){
            Rol r = new Rol();
            r.setUsuario(u);
            r.setRol(rol);
            rolServices.creacionRol(r);
        }

        return "redirect:/zona_admin/";
    }

    @RequestMapping("/crear_rol/")
    public String crearRol(Model model){
        model.addAttribute("rol", new Rol());
        return "crear_rol";
    }

    @PostMapping("/crear_rol/")
    public String crearRolPost(@ModelAttribute Rol rol){

        return "lol";

    }





}
