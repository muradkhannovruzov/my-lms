package com.example.mylms.repository;

import com.example.mylms.domain.Lesson;
import com.example.mylms.dto.WeeklyLessonCountDto;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LessonRepository extends JpaRepository<Lesson, Long> {

    @Query(value = "SELECT weekdays.weekday AS weekday, weekdays.day_name AS dayName, COUNT(sub.date) AS count "
            + "FROM ("
            + "    SELECT 0 AS weekday, 'Sunday' AS day_name UNION ALL "
            + "    SELECT 1 AS weekday, 'Monday' AS day_name UNION ALL "
            + "    SELECT 2 AS weekday, 'Tuesday' AS day_name UNION ALL "
            + "    SELECT 3 AS weekday, 'Wednesday' AS day_name UNION ALL "
            + "    SELECT 4 AS weekday, 'Thursday' AS day_name UNION ALL "
            + "    SELECT 5 AS weekday, 'Friday' AS day_name UNION ALL "
            + "    SELECT 6 AS weekday, 'Saturday' AS day_name "
            + ") weekdays "
            + "LEFT JOIN ("
            + "    SELECT bl.*, l.date, ROW_NUMBER() OVER (PARTITION BY bl.id ORDER BY l.id) AS rn "
            + "    FROM base_lesson bl "
            + "    JOIN lesson l ON bl.id = l.base_lesson_id "
            + "    WHERE bl.teacher_id = :teacherId "
            + ") sub ON weekdays.weekday = weekday(sub.date) "
            + "WHERE sub.rn = 1 OR sub.rn IS NULL "
            + "GROUP BY weekdays.weekday, weekdays.day_name "
            + "ORDER BY weekdays.weekday", nativeQuery = true)
    List<WeeklyLessonCountProjection> countLessonsByWeekday(@Param("teacherId") Long teacherId);

    interface WeeklyLessonCountProjection {
        int getWeekday();
        String getDayName();
        long getCount();
    }
}



