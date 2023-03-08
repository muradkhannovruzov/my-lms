package com.example.mylms.controller;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/welcome")
public class WelcomeController {

    @GetMapping
    public ResponseEntity<String> welcome(){
        return ResponseEntity.ok("welcome");
    }

    @GetMapping("/az")
    public ResponseEntity<String> welcomeAz(){
        return ResponseEntity.ok("Salam");
    }
}
