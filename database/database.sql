DROP TABLE IF EXISTS Courses;
DROP TABLE IF EXISTS Sections;
DROP TABLE IF EXISTS Section_Timings;
DROP TABLE IF EXISTS Student_Enrollments;

-------------------------------------------------
-- 1. COURSES (Unchanged)
-------------------------------------------------
CREATE TABLE Courses (
    course_id VARCHAR(20) PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    total_units INT NOT NULL,
    instructor_in_charge VARCHAR(255),
    
    midsem_date DATE DEFAULT NULL,
    midsem_start_time TIME DEFAULT NULL,
    midsem_end_time TIME DEFAULT NULL,
    
    compre_date DATE DEFAULT NULL,
    compre_slot VARCHAR(2) DEFAULT NULL
);

-------------------------------------------------
-- 2. SECTIONS (Using a Composite Primary Key)
-------------------------------------------------
CREATE TABLE Sections (
    course_id VARCHAR(20),
    section_type CHAR(1),    
    section_number INT,      
    
    instructors VARCHAR(500) DEFAULT NULL,
    room VARCHAR(50) DEFAULT NULL,           
    
    PRIMARY KEY (course_id, section_type, section_number),
    
    FOREIGN KEY (course_id) 
    REFERENCES Courses(course_id) ON DELETE CASCADE
);

-------------------------------------------------
-- 3. SECTION TIMINGS (Using Integer Hours)
-------------------------------------------------
CREATE TABLE Section_Timings (
    timing_id INT AUTO_INCREMENT PRIMARY KEY, 

    course_id VARCHAR(20),
    section_type CHAR(1),
    section_number INT,
    
    day_of_week VARCHAR(2) NOT NULL,
    start_hour INT NOT NULL,         
    end_hour INT NOT NULL,           
    
    FOREIGN KEY (course_id, section_type, section_number) 
    REFERENCES Sections(course_id, section_type, section_number) ON DELETE CASCADE
);

-------------------------------------------------
-- 4. STUDENT ENROLLMENTS
-------------------------------------------------
CREATE TABLE Student_Enrollments (
    student_id INT,
    course_id VARCHAR(20),
    section_type CHAR(1),
    section_number INT,
    
    grade VARCHAR(2) DEFAULT NULL, 
    
    PRIMARY KEY (student_id, course_id, section_type, section_number),
    
    FOREIGN KEY (course_id, section_type, section_number) 
    REFERENCES Sections(course_id, section_type, section_number) ON DELETE CASCADE
);
