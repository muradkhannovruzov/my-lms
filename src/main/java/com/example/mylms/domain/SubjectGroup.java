package com.example.mylms.domain;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@Entity
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class SubjectGroup {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @ManyToOne(fetch = FetchType.EAGER)
    private Semester semester;
    @ManyToOne(fetch = FetchType.LAZY)
    private Subject subject;
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(
            name = "subjGroup_students",
            joinColumns = {@JoinColumn(name = "subj_group_id", referencedColumnName = "id")},
            inverseJoinColumns = {@JoinColumn(name = "student_id", referencedColumnName = "id")}
    )
    private List<Student> students;
}
