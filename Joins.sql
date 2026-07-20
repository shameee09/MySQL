use practice_db;
SELECT * FROM University_Students;
SELECT * FROM Course;
SELECT * FROM enrollments;

-- inner joins
SELECT  University_Students.first_name,  University_Students.last_name, Course.course_name ,Course.course_id,University_Students.student_id
FROM University_Students 
INNER JOIN enrollments ON University_Students.student_id = enrollments.student_id
INNER JOIN Course ON enrollments.course_id = Course.course_id;

-- left joins
SELECT University_Students.first_name, Course.course_name 
FROM University_Students
LEFT JOIN enrollments ON University_Students.student_id = enrollments.student_id 
LEFT JOIN Course ON enrollments.course_id = Course.course_id;

-- Right Joins
SELECT University_Students.student_id, first_name
FROM University_Students
RIGHT JOIN enrollments
ON University_Students.student_id = enrollments.student_id;

-- Natural Joins
SELECT
    first_name,
    last_name,
    course_name,
    course_id,
    student_id
FROM University_Students
NATURAL JOIN enrollments
NATURAL JOIN Course;