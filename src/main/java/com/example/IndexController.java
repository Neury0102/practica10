package com.example;

import com.example.entidades.Cliente;
import com.example.entidades.Equipo;
import com.example.entidades.SubFamilia;
import com.example.servicios.ClienteServices;
import com.example.servicios.EquipoServices;
import com.example.servicios.FamiliaServices;
import com.example.servicios.SubFamiliaServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Optional;


@Controller()
@RequestMapping("/")
public class IndexController {

    @Autowired
    private EquipoServices equipoServices;

    @Autowired
    private FamiliaServices familiaServices;

    @Autowired
    private SubFamiliaServices subFamiliaServices;

    @Autowired
    private ClienteServices clienteServices;


    @RequestMapping("/")
    public String getLoginPage(Model model, HttpServletRequest request) {


        return "/indice";
    }

    @RequestMapping("/alquileres/crear_lista")
    public String getAlquilerLista(Model model, HttpServletRequest request, @RequestParam("cliente") String cedula) {
        request.getSession().setAttribute("papazon","klk");
        List<Equipo> equipoList = equipoServices.todosEquipos();
        model.addAttribute("equipos",equipoList);
        model.addAttribute("cliente",cedula);

        return "/lista_alquiler";
    }

    @RequestMapping("/alquileres/ver_lista/")
    public String getAlquilerListaView(Model model, HttpServletRequest request) {

        request.getSession().setAttribute("papazon","klk");
        List<Equipo> equipoList = equipoServices.todosEquipos();
        model.addAttribute("equipos",equipoList);

        return "/indice";
    }

    @PostMapping("/alquileres/alquilar")
    public String editarEquipoPost(@ModelAttribute Equipo equipo, @RequestParam("sub-familia") int subFamilia ){
        SubFamilia su = subFamiliaServices.getSubfamilia(subFamilia);
        equipo.setSubFamilia(su);
        equipoServices.creacionEquipo(equipo);
        return "redirect:/equipos/";

    }

    @PostMapping("/alquileres/redirect/")
    public String alquilerRedirect( @RequestParam("clientes") String cedula ){

        return "redirect:/alquileres/crear_lista?cliente="+ cedula;
    }


}
