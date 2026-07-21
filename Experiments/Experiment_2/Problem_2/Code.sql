https://www.codechef.com/learn/course/sql-intermediate/SQ00BS02/problems/GSQ66

/* Write a query using union to stack the table 'Arts' over 'Science' and output the final table */
SELECT * FROM Arts
UNION 
SELECT * FROM Science;
