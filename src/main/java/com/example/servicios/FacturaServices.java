package com.example.servicios;

import com.example.entidades.Alquiler;
import com.example.entidades.Factura;
import com.example.repositorio.FacturaRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by vacax on 20/09/16.
 */
@Service
public class FacturaServices {

    //Inyectando el repositorio
    @Autowired
    private FacturaRepository facturaRepository;

    public long cantidadUsuario(){
        return facturaRepository.count();
    }


    @Transactional
    public Factura creacionFactura(Factura factura){
        facturaRepository.save(factura);
        return factura;
    }



    public List<Factura> todasFacturas(){
        return facturaRepository.findAll();
    }
    public List<Factura> facturasActivas(Boolean activo){
        return facturaRepository.findByActiva(activo);
    }

    public Factura getFactura(int id){
        return facturaRepository.findById(id);
    }


}
