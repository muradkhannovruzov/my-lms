package com.example.mylms.security;

import com.example.mylms.dto.TeacherRequestDto;
import com.example.mylms.dto.TeacherResponseDto;
import com.example.mylms.repository.TeacherRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class TeacherService {
    private final TeacherRepository teacherRepository;

    public TeacherResponseDto create(TeacherRequestDto teacherRequestDto){
        return null;
    }
}
