# 🎓 eduTrack

**eduTrack** is a Student Management System built with **Spring Boot** and **MySQL**.  
It manages students, classes, enrollments, grades, and attendance using **stored procedures** and **relational mappings** (one-to-many and many-to-many).

---

## 🚀 Features
- 👨‍🎓 **Student Management** – Create, update, delete, and fetch students.
- 🏫 **Class Management** – Add and list classes with assigned teachers.
- 🔗 **Enrollments** – Many-to-many relationship between students and classes.
- 📝 **Grades** – Record and track student grades per class.
- 📅 **Attendance** – Mark student attendance with status (Present/Absent).
- ⚡ **Stored Procedures** – Business logic (insert/update/select) handled by MySQL procedures.

---

## 🛠️ Tech Stack
- **Backend:** Spring Boot, Spring Data JPA
- **Database:** MySQL 8+
- **ORM:** JPA (with entity relationships)
- **Build Tool:** Maven
- **Testing:** Postman / JUnit

---

## 📂 Database Schema

**Tables**
- `student` – Student details
- `class` – Classes with assigned teachers
- `enrollment` – Many-to-many bridge (student ↔ class)
- `grade` – Student grades per class
- `attendance` – Attendance per student per class

**Relationships**
- Student ↔ Enrollment ↔ Class (**Many-to-Many**)
- Student ↔ Grade (**One-to-Many**)
- Student ↔ Attendance (**One-to-Many**)

---

### 1. Clone the repo
```bash
git clone https://github.com/your-username/eduTrack.git
cd eduTrack

```
---

## 📌 Future Improvements  

- 🔒 **Add authentication** (Spring Security + JWT)  
- 🌐 **Add frontend** (Angular/React)  
- 📊 **Export reports** (attendance, grades)  

---

## 👩‍💻 Author  

**Savindi Ranaweera**  
_Full Stack Developer | Java & Spring Boot Enthusiast_  
