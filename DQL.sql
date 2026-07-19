use practice_db;

SELECT * FROM University_Students;

-- 2. SELECT  Columns
SELECT first_name, email 
FROM University_Students;

-- 3.WHERE Clause

SELECT first_name, last_name, enrollement_date 
FROM University_Students
WHERE enrollement_date > '2026-07-17';

select * from University_Students;

-- 4.Logical Operators
SELECT first_name, last_name, enrollement_date 
FROM students 
WHERE enrollment_date BETWEEN '2024-07-17' AND '2026-07-17'
  AND last_name = 'banu';

-- 5.OrderBy
SELECT first_name, last_name, enrollement_date 
FROM University_Students
ORDER BY enrollement_date DESC;

-- 6.Limit
SELECT first_name, last_name 
FROM University_Students 
LIMIT 2;

-- 7. Aggregation with GROUP BY
-- Count the number of students by enrollment_date
SELECT enrollement_date, COUNT(*) AS total_students 
FROM University_Students
GROUP BY enrollement_date;

ALTER TABLE University_Students
ADD marks VARCHAR(3);

ALTER TABLE University_Students
MODIFY marks int ;

DELETE FROM University_Students WHERE student_id is null;

select * from University_Students;

UPDATE University_Students
SET marks = CASE
    WHEN student_id = 2 THEN 35
    WHEN student_id = 3 THEN 45
    WHEN student_id = 4 THEN 75
    ELSE marks
END
WHERE student_id IN (2,3, 4);

-- Count the number 
SELECT sum(marks) AS total_sumofmarks
FROM University_Students ;

SELECT avg(marks) AS avergeMark
FROM University_Students ;

SELECT min(marks) AS minMark
FROM University_Students ;

SELECT max(marks) AS maxMark
FROM University_Students ;

-- Combined Aggregations
SELECT 
    SUM(marks) AS total_mark,
    AVG(marks) AS average_mark,
    MIN(marks) AS min_mark,
    MAX(marks) AS max_mark
FROM University_Students;

SELECT 
    SUM(marks) AS total_sales,
    AVG(marks) AS average_order,
    MIN(marks) AS smallest_order,
    MAX(marks) AS largest_order
FROM University_Students
GROUP BY student_id;

-- HAVING Clause
SELECT enrollement_date, COUNT(*) AS total_students 
FROM students 
GROUP BY enrollement_date 
HAVING total_students > 0;

select * from Course;
select * from enrollements;
select * from students;

INSERT INTO University_Students (student_id,first_name, last_name, email, enrollment_date) 
VALUES ('1','Shameem', 'banu', 'Shameem.banu@example.com', '2026-07-17');

Insert into Course(course_id,course_name,credits)
values (101,"AI",3),
(102,"ML",2),
(103,"DL",3);

insert into enrollements(enrollement_id,student_id,course_id)
values(001,1, 101),  
       (002,2, 102),  
       (003,3, 103);  
       
-- inner joins
SELECT students.first_name, students.last_name, courses.course_name ,courses.course_id,students.student_id
FROM University_Students 
INNER JOIN enrollements ON students.student_id = enrollments.student_id
INNER JOIN Courses ON enrollements.course_id = courses.course_id;

-- left joins
SELECT University_Students.first_name, Courses.course_name 
FROM University_Students
LEFT JOIN enrollements ON University_Students.student_id = enrollements.student_id 
LEFT JOIN Courses ON enrollements.course_id = Courses.course_id;

-- Right Joins
SELECT University_Students.student_id, first_name
FROM University_Students
RIGHT JOIN enrollements
ON University_Students.student_id = enrollments.student_id;