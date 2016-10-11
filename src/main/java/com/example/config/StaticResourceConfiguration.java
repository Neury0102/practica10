package com.example.config;

import org.apache.commons.lang3.SystemUtils;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

@Configuration
public class StaticResourceConfiguration extends WebMvcConfigurerAdapter {
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        String directory;

        if(SystemUtils.IS_OS_LINUX)
            directory="=/home/saleta/clientes";
        else
            directory ="file:///C:/var/clientes/";
         registry.addResourceHandler("/archivos/**").addResourceLocations(directory);
         String workingDir = System.getProperty("user.dir");
         //registry.addResourceHandler("/static/**").addResourceLocations(workingDir + "\\src\\main\\resources\\static");
    }
}