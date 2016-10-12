package com.example.repositorio;

import com.example.entidades.Alquiler;
import com.example.entidades.Cliente;
import com.example.entidades.Factura;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.Objects;

/**
 * Created by vacax on 20/09/16.
 */
public interface AlquilerRepository extends JpaRepository<Alquiler, Long> {



    List<Alquiler> findAll();
    List<Alquiler> findByFactura(Factura factura);
    @Query("select u from Alquiler u where u.devuelto = :devuelto order by u.factura.fecha")
    List<Alquiler> findByDevueltoOrderByDiasAlquiladoDesc(@Param("devuelto") boolean devuelto);

    @Query("select u from Alquiler u where u.factura.cliente = :cliente")
    List<Alquiler> buscarPorCliente(@Param("cliente") Cliente c);

    @Query("select avg(u.diasAlquilado), u.equipo.subFamilia.nombre from Alquiler u group by u.equipo.subFamilia.id")
    List<Object> diasSubfamilias();

    Alquiler findById(int id);



}
