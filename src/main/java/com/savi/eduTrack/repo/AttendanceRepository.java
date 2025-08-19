package com.savi.eduTrack.repo;

import com.savi.eduTrack.model.Attendance;
import org.springframework.data.jpa.repository.JpaRepository;

public interface AttendanceRepository extends JpaRepository<Attendance, Long> {
}
