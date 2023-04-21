package com.example.mylms.exception;

public class TeacherNotFoundException extends NotFoundException{

    public TeacherNotFoundException() {
        super("Teacher not found");
    }

}
