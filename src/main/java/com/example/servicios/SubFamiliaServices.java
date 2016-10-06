package com.example.servicios;

import com.example.entidades.Familia;
import com.example.entidades.SubFamilia;
import com.example.repositorio.FamiliaRepository;
import com.example.repositorio.SubFamiliaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by vacax on 20/09/16.
 */
@Service
public class SubFamiliaServices {

    //Inyectando el repositorio
    @Autowired
    private SubFamiliaRepository subFamiliaRepository;

    public long cantidadUsuario(){
        return subFamiliaRepository.count();
    }


    @Transactional
    public SubFamilia cracionSubFamilia(SubFamilia familia){
        subFamiliaRepository.save(familia);
        return familia;
    }



    public List<SubFamilia> todasSubFamilias(){
        return subFamiliaRepository.findAll();
    }
    public List<SubFamilia> subFamiliasFamilia(Familia id){
        return subFamiliaRepository.findAllByFamilia(id);
    }

    public SubFamilia getSubfamilia(int id){ return subFamiliaRepository.findById(id);}


}
