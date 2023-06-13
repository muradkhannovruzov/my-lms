DELIMITER //

CREATE PROCEDURE generate_lesson(
    p_base_lesson_id bigint,
    p_week_type_id int,
    p_week_day int,
    p_room_id int,
    p_begin_time time,
    p_end_time time
)
BEGIN
    DECLARE i_current_date DATE;
    DECLARE i_begin_date DATE;
    DECLARE i_end_date DATE;
    DECLARE i_begin_week_day int;
    DECLARE i_extra_day int;

    select s.begin_date, s.end_date
    into i_begin_date, i_end_date
    from base_lesson bl
             join subject_group sg on bl.subject_group_id = sg.id
             join semester s on sg.semester_id = s.id
    where bl.id = p_base_lesson_id;

    SET i_begin_week_day = WEEKDAY(i_begin_date);
    SET i_extra_day = (i_begin_week_day + p_week_day - 1) % 6;
    SET i_current_date = DATE_ADD(i_begin_date, INTERVAL i_extra_day DAY);


    WHILE i_current_date <= i_end_date DO

            SELECT i_current_date;
            INSERT INTO lesson (date, end_time, start_time, base_lesson_id, room_id)
            VALUES (i_current_date, p_end_time, p_begin_time, p_base_lesson_id, p_room_id);

            IF p_week_type_id = 3
            THEN
                SET i_current_date = DATE_ADD(i_current_date, INTERVAL 7 DAY);
            ELSE
                SET i_current_date = DATE_ADD(i_current_date, INTERVAL 14 DAY);
            END IF;

        END WHILE;
END //

DELIMITER ;

########################################################################################################################

insert into subject_group (faculty_id, semester_id, subject_id, name) values (1, 4, 1, 'M645a2_a001');
insert into subject_group (faculty_id, semester_id, subject_id, name) values (1, 4, 1, 'M645a3_a001');
insert into subject_group (faculty_id, semester_id, subject_id, name) values (1, 4, 1, 'M645a4_a001');

select * from subject_group;

insert into base_lesson (lesson_type_id, subject_group_id, teacher_id) values (1, 1, 1);
insert into base_lesson (lesson_type_id, subject_group_id, teacher_id) values (2, 1, 2);
call generate_lesson(1, 3, 1, 1, '09:00:00', '10:00:00');
call generate_lesson(2, 1, 2, 1, '09:00:00', '10:00:00');

insert into base_lesson (lesson_type_id, subject_group_id, teacher_id) values (1, 2, 1);
insert into base_lesson (lesson_type_id, subject_group_id, teacher_id) values (2, 2, 2);
call generate_lesson(3, 3, 1, 1, '10:10:00', '11:10:00');
call generate_lesson(4, 1, 2, 1, '10:10:00', '11:10:00');


insert into base_lesson (lesson_type_id, subject_group_id, teacher_id) values (1, 3, 1);
insert into base_lesson (lesson_type_id, subject_group_id, teacher_id) values (2, 3, 2);
call generate_lesson(5, 3, 1, 1, '11:20:00', '12:20:00');
call generate_lesson(6, 1, 2, 1, '11:20:00', '12:20:00');

###############################################################################################################################

insert into subject_group (faculty_id, semester_id, subject_id, name) values (1, 4, 6, 'M645a2_k001');
insert into subject_group (faculty_id, semester_id, subject_id, name) values (1, 4, 6, 'M645a3_k001');
insert into subject_group (faculty_id, semester_id, subject_id, name) values (1, 4, 6, 'M645a4_k001');

insert into base_lesson (lesson_type_id, subject_group_id, teacher_id) values (1, 4, 3);
insert into base_lesson (lesson_type_id, subject_group_id, teacher_id) values (2, 4, 4);
call generate_lesson(7, 3, 3, 1, '09:00:00', '10:00:00');
call generate_lesson(8, 1, 4, 1, '09:00:00', '10:00:00');

insert into base_lesson (lesson_type_id, subject_group_id, teacher_id) values (1, 5, 3);
insert into base_lesson (lesson_type_id, subject_group_id, teacher_id) values (2, 5, 4);
call generate_lesson(9, 3, 3, 1, '10:10:00', '11:10:00');
call generate_lesson(10, 1, 4, 1, '10:10:00', '11:10:00');


insert into base_lesson (lesson_type_id, subject_group_id, teacher_id) values (1, 6, 3);
insert into base_lesson (lesson_type_id, subject_group_id, teacher_id) values (2, 6, 4);
call generate_lesson(11, 3, 3, 1, '11:20:00', '12:20:00');
call generate_lesson(12, 1, 4, 1, '11:20:00', '12:20:00');

###############################################################################################################################

insert into subject_group (faculty_id, semester_id, subject_id, name) values (1, 4, 3, 'M645a2_a003');
insert into subject_group (faculty_id, semester_id, subject_id, name) values (1, 4, 3, 'M645a3_a003');
insert into subject_group (faculty_id, semester_id, subject_id, name) values (1, 4, 3, 'M645a4_a003');

insert into base_lesson (lesson_type_id, subject_group_id, teacher_id) values (1, 7, 4);
call generate_lesson(13, 2, 5, 5, '09:00:00', '10:00:00');

insert into base_lesson (lesson_type_id, subject_group_id, teacher_id) values (1, 8, 4);
call generate_lesson(14, 2, 5, 5, '10:10:00', '11:10:00');

insert into base_lesson (lesson_type_id, subject_group_id, teacher_id) values (1, 9, 4);
call generate_lesson(15, 2, 5, 5, '11:20:00', '12:20:00');

################################################################################################################################

insert into subject_group (faculty_id, semester_id, subject_id, name) values (1, 4, 4, 'M645a2_i001');
insert into subject_group (faculty_id, semester_id, subject_id, name) values (1, 4, 4, 'M645a3_i001');
insert into subject_group (faculty_id, semester_id, subject_id, name) values (1, 4, 4, 'M645a4_i001');

insert into base_lesson (lesson_type_id, subject_group_id, teacher_id) values (1, 10, 5);
insert into base_lesson (lesson_type_id, subject_group_id, teacher_id) values (2, 10, 6);
insert into base_lesson (lesson_type_id, subject_group_id, teacher_id) values (3, 10, 6);
call generate_lesson(16, 3, 2, 5, '13:00:00', '14:00:00');
call generate_lesson(17, 1, 3, 3, '13:00:00', '14:00:00');
call generate_lesson(18, 2, 3, 3, '13:00:00', '14:00:00');

insert into base_lesson (lesson_type_id, subject_group_id, teacher_id) values (1, 11, 5);
insert into base_lesson (lesson_type_id, subject_group_id, teacher_id) values (2, 11, 6);
insert into base_lesson (lesson_type_id, subject_group_id, teacher_id) values (3, 11, 6);
call generate_lesson(19, 3, 2, 5, '14:10:00', '15:10:00');
call generate_lesson(20, 1, 3, 3, '14:10:00', '15:10:00');
call generate_lesson(21, 2, 3, 3, '14:10:00', '15:10:00');