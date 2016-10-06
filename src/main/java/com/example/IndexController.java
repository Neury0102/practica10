package com.example;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.Optional;


@Controller()
@RequestMapping("/")
public class IndexController {

    @Autowired
    private MessageSource messageSource;

    @RequestMapping("/")
    public String getLoginPage() {
        return "/indice";
    }


}
