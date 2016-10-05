package com.example.repositorio;

import com.example.entidades.Familia;
import com.example.entidades.SubFamilia;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * Created by vacax on 20/09/16.
 */
public interface SubFamiliaRepository extends JpaRepository<SubFamilia, Long> {



    List<SubFamilia> findAll();

    List<SubFamilia> findAllByFamilia(Familia id);


}
