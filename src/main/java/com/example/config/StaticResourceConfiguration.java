package com.example.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
public class StaticResourceConfiguration extends WebMvcConfigurerAdapter {
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
         registry.addResourceHandler("/archivos/**").addResourceLocations("file:///C:/var/clientes/");
         String workingDir = System.getProperty("user.dir");
         //registry.addResourceHandler("/static/**").addResourceLocations(workingDir + "\\src\\main\\resources\\static");
    }
}