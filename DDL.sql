-- Data Definition Language
CREATE DATABASE practice_db;

-- Switch to the new database
Use practice_db;

-- Creating table
CREATE TABLE students
(student_id INT AUTO_INCREMENT PRIMARY KEY, 
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50),
email VARCHAR(100) UNIQUE,
enrollement_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

SELECT *FROM University_Students;

-- 	Alter
ALTER TABLE students
ADD phone_number VARCHAR(15);

-- 	Modify
ALTER TABLE students
MODIFY last_name VARCHAR(50) NOT NULL;

-- 	Rename
ALTER TABLE students
RENAME TO University_Students;

-- 	Drop
DROP TABLE University_Students;

-- Create course 
CREATE TABLE Course(
 course_id INT AUTO_INCREMENT PRIMARY KEY,
 course_name VARCHAR(50) NOT NULL UNIQUE,
 credits   INT CHECK(credits BETWEEN 1 AND 5));
 
 -- Create enrollement 
 CREATE TABLE enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES University_Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Course(course_id)
);

-- Remove all rows
TRUNCATE TABLE students;

ALTER TABLE students
DROP COLUMN phone_number;

 
