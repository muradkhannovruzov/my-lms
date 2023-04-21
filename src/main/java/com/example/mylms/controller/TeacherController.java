package com.example.mylms.controller;

import com.example.mylms.dto.TeacherRequestDto;
import com.example.mylms.dto.TeacherResponseDto;
import com.example.mylms.dto.TeacherUpdateDto;
import com.example.mylms.service.TeacherService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;

@Slf4j
@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/teacher")
public class TeacherController {
    private final TeacherService teacherService;

    @GetMapping("/{id}")
    public ResponseEntity<TeacherResponseDto> getById(@PathVariable Long id){
        log.trace("Get teacher by id: {}", id);
        return ResponseEntity.ok(teacherService.get(id));
    }

    @GetMapping("/list")
    public ResponseEntity<Page<TeacherResponseDto>> getAll(Pageable pageable){
        log.trace("Get all teachers on page: {}", pageable.getPageNumber());
        return ResponseEntity.ok(teacherService.getAll(pageable));
    }

    @PostMapping
    public ResponseEntity<TeacherResponseDto> create(@RequestBody @Valid TeacherRequestDto dto) {
        log.trace("Create teacher with name {}", dto.getName());
        return ResponseEntity.status(HttpStatus.CREATED).body(teacherService.create(dto));
    }

    @PutMapping("/{id}")
    public ResponseEntity<TeacherResponseDto> update(@PathVariable Long id,
                                                     @RequestBody @Valid TeacherUpdateDto dto){
        log.trace("Update teacher {}: ", id);
        return ResponseEntity.ok(teacherService.update(id, dto));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteById(@PathVariable Long id) {
        log.trace("Delete teacher by id: {}", id);
        teacherService.delete(id);
        return ResponseEntity.status(HttpStatus.NO_CONTENT).build();
    }

}
