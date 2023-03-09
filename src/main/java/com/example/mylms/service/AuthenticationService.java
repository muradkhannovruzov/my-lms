package com.example.mylms.service;

import com.example.mylms.controller.auth.AuthenticationResponse;
import com.example.mylms.domain.Role;
import com.example.mylms.domain.User;
import com.example.mylms.dto.SignInDto;
import com.example.mylms.dto.SignUpDto;
import com.example.mylms.repository.UserRepository;
import com.example.mylms.security.JwtService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class AuthenticationService {

    private final UserRepository repository;
    private final PasswordEncoder passwordEncoder;
    private final JwtService jwtService;
    private final AuthenticationManager authenticationManager;

    public AuthenticationResponse signUp(SignUpDto dto) {
        var user = User.builder()
                .name(dto.getName())
                .surname(dto.getSurname())
                .username(dto.getEmail())
                .password(passwordEncoder.encode(dto.getPassword()))
                .role(Role.USER)
                .build();

        repository.save(user);
        return createAuthenticationResponse(user);
    }

    public AuthenticationResponse signIn(SignInDto dto) {
        authenticationManager.authenticate(
                new UsernamePasswordAuthenticationToken(
                        dto.getEmail(),
                        dto.getPassword()
                )
        );

        var user = repository.findByUsername(dto.getEmail())
                .orElseThrow(() -> new UsernameNotFoundException("User not found"));
        return createAuthenticationResponse(user);
    }

    private AuthenticationResponse createAuthenticationResponse(User user) {
        var jwtToken = jwtService.generateToken(user);
        return AuthenticationResponse.builder()
                .token(jwtToken)
                .build();
    }
}
