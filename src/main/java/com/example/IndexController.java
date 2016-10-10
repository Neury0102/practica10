package com.example;

import com.example.entidades.*;
import com.example.servicios.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Date;
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

    @Autowired
    private FacturaServices facturaServices;

    @Autowired
    private AlquilerServices alquilerServices;

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

    @RequestMapping("/alquileres/ver_lista")
    public String getAlquilerListaView(Model model,  @RequestParam("cliente") String cedula, HttpServletRequest request) {

        ArrayList<Alquiler> lista = (ArrayList<Alquiler>) request.getSession().getAttribute("listaAlquiler");
        if(lista  == null){
            lista = new ArrayList<>();
        }
        model.addAttribute("lista_alquiler",lista);
        model.addAttribute("cliente", cedula);

        return "/crear_factura";
    }

    @RequestMapping("/alquileres/alquilar_equipo")
    public String editarEquipoPost(Model model, @RequestParam("cliente") String cedula, @RequestParam("id") int id ){

        Equipo equipo1 = equipoServices.getEquipo(id);
        model.addAttribute("equipo",equipo1);
        model.addAttribute("cliente",cedula);
        model.addAttribute("alquiler", new Alquiler());
        return "/crear_alquiler";


    }

    @PostMapping("/alquileres/alquilar/")
    public String editarEquipoPost( HttpServletRequest request,
                                   @RequestParam("equipo") int id, @RequestParam("cliente") String cedula
                                   ){
        Alquiler alquiler = new Alquiler();
        alquiler.setDevuelto(false);
        alquiler.setEquipo(equipoServices.getEquipo(id));
        alquiler.setNombre("alquiler");


        ArrayList<Alquiler> lista = (ArrayList<Alquiler>) request.getSession().getAttribute("listaAlquiler");
        if(lista  == null){
            lista = new ArrayList<>();
        }
        lista.add(alquiler);
        request.getSession().setAttribute("listaAlquiler",lista);

        return "redirect:/alquileres/crear_lista?cliente="+cedula;

    }

    @PostMapping("/alquileres/redirect/")
    public String alquilerRedirect( @RequestParam("clientes") String cedula ){

        return "redirect:/alquileres/crear_lista?cliente="+ cedula;
    }

    @Transactional
    @PostMapping("/alquileres/facturar/")
    public String alquilerFacturar( HttpServletRequest request, @RequestParam("cliente") String cedula ){
        ArrayList<Alquiler> lista = (ArrayList<Alquiler>) request.getSession().getAttribute("listaAlquiler");
        if(lista.size() == 0){
            return "redirect:/alquileres/crear_lista?cliente="+ cedula;
        }
        Factura factura = new Factura();
        factura.setActiva(true);
        factura.setCliente(clienteServices.getCliente(cedula));
        factura.setFecha(new Date());
        facturaServices.creacionFactura(factura);
        for(Alquiler a : lista){
            a.setFactura(factura);
            alquilerServices.creacionAlquiler(a);
            Equipo e = a.getEquipo();
            e.setCantidad(e.getCantidad()-1);
            equipoServices.creacionEquipo(e);

        }
        return "redirect:/";
    }


}
