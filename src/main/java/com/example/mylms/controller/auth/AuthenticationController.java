package com.example.mylms.controller.auth;

import com.example.mylms.dto.SignInDto;
import com.example.mylms.dto.SignUpDto;
import com.example.mylms.service.AuthenticationService;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/api/v1/auth")
@RequiredArgsConstructor
public class AuthenticationController {
    private final AuthenticationService authService;

    @PostMapping("/sign-up")
    public ResponseEntity<AuthenticationResponse> signUp(
            @RequestBody SignUpDto dto
    ){
        return ResponseEntity.ok(authService.signUp(dto));
    }

    @PostMapping("/sign-in")
    public ResponseEntity<AuthenticationResponse> signIn(
            @RequestBody SignInDto dto
    ){
        return ResponseEntity.ok(authService.signIn(dto));
    }

}
