package com.savi.eduTrack.service;

import com.savi.eduTrack.model.Student;
import com.savi.eduTrack.repo.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;


import java.util.List;

public class StudentServiceImpl implements StudentService {
    @Autowired
    private StudentRepository studentRepository;

    @Override
    public Student addStudent ( Student student ) {
        return studentRepository.save(student);
    }

    @Override
    public List<Student> getAllStudents () {
        return studentRepository.findAll();
    }

    @Override
    public Student updateStudent ( Long id, Student updatedStudent ) {
        return studentRepository.findById(id)
                .map(s -> {
                    s.setName(updatedStudent.getName());
                    s.setEmail ( updatedStudent.getEmail() );
                    s.setCourse ( updatedStudent.getCourse() );
                    return studentRepository.save(s);
                })
                .orElseThrow(() -> new RuntimeException("Student not found"));
    }

    @Override
    public void deleteStudent ( Long id ) {
        studentRepository.deleteById(id);
    }
}
