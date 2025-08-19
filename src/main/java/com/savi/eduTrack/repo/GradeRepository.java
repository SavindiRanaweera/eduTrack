package com.savi.eduTrack.repo;

import com.savi.eduTrack.model.Grade;
import org.springframework.data.jpa.repository.JpaRepository;

public interface GradeRepository extends JpaRepository<Grade, Long> {
}
