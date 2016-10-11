package com.example.repositorio;

import com.example.entidades.Alquiler;
import com.example.entidades.Cliente;
import com.example.entidades.Factura;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;

/**
 * Created by vacax on 20/09/16.
 */
public interface FacturaRepository extends JpaRepository<Factura, Long> {



    List<Factura> findAll();

    Factura findById(int id);

    List<Factura> findByActiva(Boolean activo);

    @Query("select u from Factura u where u.cliente = :cliente and u.activa='true'")
    List<Factura> encontrarFacturaCliente(@Param("cliente") Cliente cliente);


}
