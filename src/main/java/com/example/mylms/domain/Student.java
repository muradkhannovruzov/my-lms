package com.example.mylms.domain;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Data
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private String surname;
    @ManyToOne(fetch = FetchType.EAGER)
    private Faculty faculty;
    @Column(nullable = false, unique = true)
    private String pin;
    private LocalDate birthDate;
    @ManyToMany(mappedBy = "students", fetch = FetchType.LAZY)
    private List<SubjectGroup> subjectGroupList = new ArrayList<>();
}
