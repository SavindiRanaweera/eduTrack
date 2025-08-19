package com.savi.eduTrack.service;

import com.savi.eduTrack.model.Student;

import java.util.List;

public interface StudentService {
    Student addStudent( Student student);
    List<Student> getAllStudents();
    Student updateStudent(Long id, Student updatedStudent);
    void deleteStudent(Long id);
}
