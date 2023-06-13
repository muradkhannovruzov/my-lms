package com.example.mylms.controller;

import com.example.mylms.dto.TeacherResponseDto;
import com.example.mylms.dto.WeeklyLessonCountDto;
import com.example.mylms.service.LessonService;
import com.example.mylms.service.TeacherService;
import jakarta.websocket.server.PathParam;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Slf4j
@RestController
@RequiredArgsConstructor
@RequestMapping("/api/v1/lesson")
public class LessonController {
    private final LessonService lessonService;
    @GetMapping("/weeklyCount")
    public ResponseEntity<List<WeeklyLessonCountDto>> getWeeklyLessonCount(@RequestParam String teacherId){
        log.trace("Get teacher by id: {}", teacherId);
        return ResponseEntity.ok(lessonService.getLessonsCountForTeacher(Long.parseLong(teacherId)));
    }
}
