package com.example.mylms.service;

import com.example.mylms.controller.auth.AuthenticationResponse;
import com.example.mylms.domain.Role;
import com.example.mylms.domain.User;
import com.example.mylms.dto.SignInDto;
import com.example.mylms.dto.SignUpDto;
import com.example.mylms.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class AuthenticationService {

    private final UserRepository repository;
    private final PasswordEncoder passwordEncoder;

    public AuthenticationResponse signUp(SignUpDto dto) {
        var user = User.builder()
                .name(dto.getName())
                .surname(dto.getSurname())
                .username(dto.getEmail())
                .password(passwordEncoder.encode(dto.getPassword()))
                .role(Role.USER)
                .build();
        return null;
    }

    public AuthenticationResponse signIn(SignInDto dto) {
        return null;
    }
}
