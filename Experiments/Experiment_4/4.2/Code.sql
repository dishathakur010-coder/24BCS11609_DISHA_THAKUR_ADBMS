https://www.codechef.com/viewsolution/1321354463

-- Write a query to do the following:

-- FULL OUTER JOIN the 'student' and 'course' tables using 'Course_id' to match the tables. Output the joined table.
SELECT s.St_id,s.St_Name,s.Department,s.Course_id,c.Course_id,c.Course_Name,c.Credits,c.Prof_id FROM student
AS s FULL OUTER JOIN course AS c ON s.Course_id=c.Course_id;
