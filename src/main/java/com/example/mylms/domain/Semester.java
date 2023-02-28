package com.example.mylms.domain;

import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDate;

@Data
@Entity
public class Semester {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String name;
    private LocalDate beginDate;
    private LocalDate endDate;

    @ManyToOne(fetch = FetchType.EAGER)
    private EduYear eduYear;
}
