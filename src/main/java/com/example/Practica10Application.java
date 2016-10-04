package com.example;

import com.example.servicios.UsuarioServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.stereotype.Controller;

@SpringBootApplication
public class Practica10Application {


	public static void main(String[] args) {
		ApplicationContext applicationContext = SpringApplication.run(Practica10Application.class, args);
		UsuarioServices usuarioServices = (UsuarioServices) applicationContext.getBean("usuarioServices");
		usuarioServices.crearAdmin();



	}
}
