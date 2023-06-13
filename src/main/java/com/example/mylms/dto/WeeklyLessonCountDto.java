package com.example.mylms.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class WeeklyLessonCountDto {
    private int weekday;
    private String dayName;
    private long count;
}
