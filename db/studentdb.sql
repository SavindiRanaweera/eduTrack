USE studentdb;

CREATE TABLE IF NOT EXISTS student (
    id INT AUTO_INCREMENT PRIMARY KEY ,
    name VARCHAR(100),
    email VARCHAR(100),
    course VARCHAR(50)
    );

CREATE TABLE IF NOT EXISTS class (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    teacher VARCHAR(100)

    );

-- Enrollments (many-to-many: student ↔ class)
CREATE TABLE IF NOT EXISTS enrollment (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    class_id INT,
    FOREIGN KEY (student_id) REFERENCES student(id) ON DELETE CASCADE,
    FOREIGN KEY (class_id) REFERENCES class(id) ON DELETE CASCADE
    );

-- Grades
CREATE TABLE IF NOT EXISTS grade (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    class_id INT,
    grade VARCHAR(5),
    FOREIGN KEY (student_id) REFERENCES student(id) ON DELETE CASCADE,
    FOREIGN KEY (class_id) REFERENCES class(id) ON DELETE CASCADE
    );

-- Attendance
CREATE TABLE IF NOT EXISTS attendance (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    class_id INT,
    date DATE,
    status ENUM('Present', 'Absent') NOT NULL,
    FOREIGN KEY (student_id) REFERENCES student(id) ON DELETE CASCADE,
    FOREIGN KEY (class_id) REFERENCES class(id) ON DELETE CASCADE
    );

SHOW TABLES ;

-- Stored Procedure: Add student
DELIMITER $$
CREATE PROCEDURE AddStudent(IN p_name VARCHAR(100), IN p_email VARCHAR(100), IN p_course VARCHAR(50))
BEGIN
INSERT INTO student(name, email, course) VALUES(p_name, p_email, p_course);
END$$
DELIMITER ;

-- Stored Procedure: Get all students
DELIMITER $$
CREATE PROCEDURE GetAllStudents()
BEGIN
SELECT * FROM student;
END$$
DELIMITER ;

-- Stored Procedure: Update student
DELIMITER $$
CREATE PROCEDURE UpdateStudent(IN p_id INT, IN p_name VARCHAR(100), IN p_email VARCHAR(100), IN p_course VARCHAR(50))
BEGIN
UPDATE student SET name = p_name, email = p_email, course = p_course WHERE id = p_id;
END$$
DELIMITER ;

-- Stored Procedure: Delete student
DELIMITER $$
CREATE PROCEDURE DeleteStudent(IN p_id INT)
BEGIN
    DELETE FROM student WHERE id = p_id;
    -- ^ notice semicolon inside
END$$
DELIMITER ;


-- Add Class
DELIMITER $$
CREATE PROCEDURE AddClass(IN p_name VARCHAR(100), IN p_teacher VARCHAR(100))
BEGIN
INSERT INTO class(name, teacher) VALUES(p_name, p_teacher);
END$$
DELIMITER ;

-- Get All Classes
DELIMITER $$
CREATE PROCEDURE GetAllClasses()
BEGIN
SELECT * FROM class;
END$$
DELIMITER ;

-- Record Grade
DELIMITER $$
CREATE PROCEDURE AddGrade(IN p_student INT, IN p_class INT, IN p_grade VARCHAR(5))
BEGIN
INSERT INTO grade(student_id, class_id, grade)
VALUES(p_student, p_class, p_grade);
END$$
DELIMITER ;

-- Mark Attendance
DELIMITER $$
CREATE PROCEDURE MarkAttendance(IN p_student INT, IN p_class INT, IN p_date DATE, IN p_status ENUM('Present','Absent'))
BEGIN
INSERT INTO attendance(student_id, class_id, date, status)
VALUES(p_student, p_class, p_date, p_status);
END$$
DELIMITER ;