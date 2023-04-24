package com.example.demobuildspring.rest;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping(value = "/api/v1")
public class LoginController {

    @GetMapping(value = "/test")
    public String testCallApi(@RequestParam String stringInto) {
        System.out.println("string into : " + stringInto);
        return "You have been write : " + stringInto;
    }
    
    @GetMapping(value = "/test1/hihi")
    public String testCallApi1(@RequestParam String stringInto) {
        System.out.println("string into : " + stringInto + "HIHI");
        return "You have been hihi write : " + stringInto + "hihi";
    }
}
