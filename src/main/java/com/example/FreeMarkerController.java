package com.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.Locale;
import java.util.Optional;

/**
 * Created by vacax on 21/09/16.
 */
@Controller()
@RequestMapping("/login")
public class FreeMarkerController {

    @Autowired
    private MessageSource messageSource;


    @RequestMapping(value = "", method = RequestMethod.GET)
    public ModelAndView getLoginPage(@RequestParam Optional<String> error) {
        return new ModelAndView("login", "error", error);
    }



}
