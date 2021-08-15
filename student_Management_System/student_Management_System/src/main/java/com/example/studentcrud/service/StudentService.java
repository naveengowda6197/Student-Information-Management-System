package com.example.studentcrud.service;

import com.example.studentcrud.model.Student;

import java.util.List;

public interface StudentService {
    List<Student> getAllStudents();

    Student getStudentById(int id);

    void addStudent(Student student);
    
    void deleteStudent(int id);
}
