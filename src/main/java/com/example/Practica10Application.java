package com.example;

import com.example.servicios.UsuarioServices;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.support.ReloadableResourceBundleMessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.LocaleResolver;
import org.springframework.web.servlet.i18n.SessionLocaleResolver;

import java.util.Locale;

@SpringBootApplication
public class Practica10Application {


	public static void main(String[] args) {
		String workingDir = System.getProperty("user.dir");
		System.out.println("Current working directory : " + workingDir + "\\src\\main\\resources\\static");
		ApplicationContext applicationContext = SpringApplication.run(Practica10Application.class, args);
		UsuarioServices usuarioServices = (UsuarioServices) applicationContext.getBean("usuarioServices");
		usuarioServices.crearAdmin();



	}


}
