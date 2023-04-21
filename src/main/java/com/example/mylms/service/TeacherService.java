package com.example.mylms.service;

import com.example.mylms.domain.Teacher;
import com.example.mylms.dto.TeacherRequestDto;
import com.example.mylms.dto.TeacherResponseDto;
import com.example.mylms.dto.TeacherUpdateDto;
import com.example.mylms.exception.TeacherNotFoundException;
import com.example.mylms.repository.TeacherRepository;
import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class TeacherService {
    private final TeacherRepository repository;
    private final ModelMapper modelMapper;

    public TeacherResponseDto get(Long id){
        return repository.findById(id)
                .map(teacher -> modelMapper.map(teacher, TeacherResponseDto.class))
                .orElseThrow(TeacherNotFoundException::new);
    }

    public TeacherResponseDto create(TeacherRequestDto dto){
        Teacher teacher = modelMapper.map(dto, Teacher.class);
        return modelMapper.map(repository.save(teacher), TeacherResponseDto.class);
    }

    public TeacherResponseDto update(Long id, TeacherUpdateDto dto){
        return repository.findById(id).map(teacher -> {
            modelMapper.map(dto, teacher);
            return modelMapper.map(repository.save(teacher), TeacherResponseDto.class);
        }).orElseThrow(TeacherNotFoundException::new);
    }

    @Transactional
    public void delete(Long id) {
        Teacher teacher = repository.findById(id).orElseThrow(TeacherNotFoundException::new);
        repository.delete(teacher);
    }

    public Page<TeacherResponseDto> getAll(Pageable pageable){
        return repository.findAll(pageable)
                .map(teacher -> modelMapper.map(teacher, TeacherResponseDto.class));
    }

}
