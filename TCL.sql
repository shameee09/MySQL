Use practice_db;
select * from University_Students;
-- Start transaction
START TRANSACTION;

-- Insert 
INSERT INTO University_Students(first_name, last_name, email, enrollement_date) 
VALUES ('Abu', 'Ashif', 'abu.ashif@example.com', '2026-07-17');

-- Savepoint 
SAVEPOINT before_update;

-- Update 
UPDATE University_Students
SET email = 'abu.email@example.com' 
WHERE student_id = 2;

-- Rollback to the savepoint
ROLLBACK TO before_update;

-- Commit the remaining changes
COMMIT;

select * from University_Students;

--  set constraints
SET FOREIGN_KEY_CHECKS = 0;

-- Perform operations that violate constraints
DELETE FROM University_Students WHERE student_id = 1;

SET FOREIGN_KEY_CHECKS = 1;

