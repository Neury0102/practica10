package com.example.repositorio;

import com.example.entidades.Usuario;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * Created by vacax on 20/09/16.
 */
public interface UsuarioRepository extends JpaRepository<Usuario, Long> {

    Usuario findByNombre(String nombre);
    List<Usuario> findAllByApellidoNotNull();
    Usuario findByNombreAndApellido(String nombre, String apellido);
    List<Usuario> findAllByUsername(String username);
    List<Usuario> findAll();


    List<Usuario> findAllByNombreStartingWith(String nombre);
    //Indicando que ignore el tamaño de la letra.
    List<Usuario> findAllByNombreStartingWithIgnoreCase(String nombre);

    //Ordenando la lista de profesores por fecha.
   // List<Usuario> findAllByOrderByFechaNacimientoDesc();

    //Trabajando con los querys de HQL.
  /*  @Query("select u from Usuario u where u.cedula = ?1")
    Usuario consultaProfesor(String cedula);

    @Query("select u from Usuario u where u.cedula = :cedula")
    Usuario consultaProfesorCedula(@Param("cedula") String cedula);

    @Query(value = "select * from Usuario p where p.cedula = :cedula", nativeQuery = true)
    Usuario consultaProfesorCedulaNativo(@Param("cedula") String cedula);*/
}
