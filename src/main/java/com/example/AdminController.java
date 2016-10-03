package com.example;

import com.example.entidades.Usuario;
import com.example.servicios.UsuarioServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by saleta on 10/2/2016.
 */
@Controller()
@RequestMapping("/zona_admin")
public class AdminController {

    @RequestMapping("/")
    public String index(Model model){
        System.out.print(usuarioServices.cantidadUsuario());
        return "/administracion";
    }

    @Autowired
    private UsuarioServices usuarioServices;

    @RequestMapping("/crear_usuario/")
    public String crearUsuario(Model model){
        model.addAttribute("usuario", new Usuario());
        return "/crear_usuario";
    }

    @PostMapping("/crear_usuario/")
    public String crearUsuarioPost(@ModelAttribute Usuario usuario){
        usuarioServices.creacionUsuario(usuario);
        return "redirect:/zona_admin/";
    }
}
