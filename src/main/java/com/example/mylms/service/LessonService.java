package com.example.mylms.service;

import com.example.mylms.dto.WeeklyLessonCountDto;
import com.example.mylms.repository.LessonRepository;
import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@RequiredArgsConstructor
public class LessonService {
    private final LessonRepository repository;
    private final ModelMapper modelMapper;

    public List<WeeklyLessonCountDto> getLessonsCountForTeacher(long teacherId){
        List<WeeklyLessonCountDto> weeklyLessonCountDtos = new ArrayList<>();
        List<LessonRepository.WeeklyLessonCountProjection> weeklyLessonCountProjections = repository.countLessonsByWeekday(teacherId);

        weeklyLessonCountProjections.stream().map(projection -> {
            WeeklyLessonCountDto dto = new WeeklyLessonCountDto();
            dto.setWeekday(projection.getWeekday());
            dto.setDayName(projection.getDayName());
            dto.setCount(projection.getCount());
            return dto;
        }).forEach(weeklyLessonCountDtos::add);

        return weeklyLessonCountDtos;
    }
}
