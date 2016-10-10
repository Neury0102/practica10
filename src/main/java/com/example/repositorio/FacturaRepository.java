package com.example.repositorio;

import com.example.entidades.Alquiler;
import com.example.entidades.Factura;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * Created by vacax on 20/09/16.
 */
public interface FacturaRepository extends JpaRepository<Factura, Long> {



    List<Factura> findAll();

    Factura findById(int id);

    List<Factura> findByActiva(Boolean activo);


}
