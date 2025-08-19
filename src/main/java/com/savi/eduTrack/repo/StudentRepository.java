package com.savi.eduTrack.repo;

import com.savi.eduTrack.model.Student;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StudentRepository extends JpaRepository<Student, Long> {
}
