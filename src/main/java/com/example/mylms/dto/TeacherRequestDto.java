package com.example.mylms.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


import java.time.LocalDate;


@Data
@NoArgsConstructor
@AllArgsConstructor
public class TeacherRequestDto {
    private String name;
    private String surname;
    private String pin;
    private LocalDate birthDate;
}
