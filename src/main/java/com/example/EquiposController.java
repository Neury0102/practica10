package com.example;

import com.example.entidades.Cliente;
import com.example.entidades.Equipo;
import com.example.entidades.Familia;
import com.example.entidades.SubFamilia;
import com.example.servicios.EquipoServices;
import com.example.servicios.FamiliaServices;
import com.example.servicios.SubFamiliaServices;
import org.apache.commons.lang3.SystemUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.Paths;
import java.util.List;

/**
 * Created by saleta on 10/2/2016.
 */
@Controller()
@RequestMapping("/equipos")
public class EquiposController {
    @Autowired
    private EquipoServices equipoServices;

    @Autowired
    private FamiliaServices familiaServices;

    @Autowired
    private SubFamiliaServices subFamiliaServices;


    @RequestMapping("/")
    public String index(Model model){

        List<Equipo> equipoList = equipoServices.todosEquipos();
        model.addAttribute("equipos",equipoList);
        return "ver_equipos";
    }

    @RequestMapping("/editar_equipo")
    public String editarEquipo(Model model,@RequestParam("id") int id){
        Equipo equipo = equipoServices.getEquipo(id);
        model.addAttribute("equipo",equipo);
        model.addAttribute("familias", familiaServices.todasFamilias());
        return "/editar_equipo";
    }
    @PostMapping("/editar_equipo")
    public String editarEquipoPost(@ModelAttribute Equipo equipo,@RequestParam("sub-familia") int subFamilia ){
        SubFamilia su = subFamiliaServices.getSubfamilia(subFamilia);
        equipo.setSubFamilia(su);
        equipoServices.creacionEquipo(equipo);
        return "redirect:/equipos/";

    }

    @RequestMapping(value="/get_sub_familias", method= RequestMethod.GET, produces="application/json")
    public List<SubFamilia> pay(@RequestParam("id") int familia_id) {
        Familia familia = familiaServices.getFamilia(familia_id);

        return subFamiliaServices.subFamiliasFamilia(familia);
    }



    @RequestMapping("/crear_equipo/")
    public String crearEquipo(Model model){
        model.addAttribute("equipo", new Equipo());
        model.addAttribute("familias", familiaServices.todasFamilias());

        return "/crear_equipo";
    }

    @PostMapping("/crear_equipo/")
    @Transactional
    public String crearEquipoPost(@ModelAttribute Equipo equipo,
                                   @RequestParam("uploadfile") MultipartFile uploadfile, @RequestParam("sub-familia") int subFamilia){
        try {
            SubFamilia su = subFamiliaServices.getSubfamilia(subFamilia);
            equipo.setSubFamilia(su);
            String filename = equipo.getId() + "_" + uploadfile.getOriginalFilename();
            String directory;
            if(SystemUtils.IS_OS_LINUX)
                directory="/home/saleta/clientes";
            else
                directory ="C:\\var\\clientes";
            String filepath = Paths.get(directory, filename).toString();

            BufferedOutputStream stream =
                    new BufferedOutputStream(new FileOutputStream(new File(filepath)));
            stream.write(uploadfile.getBytes());
            stream.close();
            equipo.setRuta_imagen(filename);
            equipoServices.creacionEquipo(equipo);
        }
        catch (Exception e) {
            System.out.println(e.getMessage());

        }

        return "redirect:/equipos/";
    }








}
