package com.example.repositorio;

import com.example.entidades.Equipo;
import com.example.entidades.Familia;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * Created by vacax on 20/09/16.
 */
public interface EquipoRepository extends JpaRepository<Equipo, Long> {



    List<Equipo> findAll();


}
