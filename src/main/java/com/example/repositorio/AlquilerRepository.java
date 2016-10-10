package com.example.repositorio;

import com.example.entidades.Alquiler;
import com.example.entidades.Cliente;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * Created by vacax on 20/09/16.
 */
public interface AlquilerRepository extends JpaRepository<Alquiler, Long> {



    List<Alquiler> findAll();

    Alquiler findById(int id);


}
