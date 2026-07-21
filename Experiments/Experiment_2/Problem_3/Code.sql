https://www.codechef.com/learn/course/sql-intermediate/SQ00BS06/problems/GSQ76

/* Write a query to find the list of fruits available in the supermarket.
(f_name column has the name of the fruits and inv_name has the name of inventories, you are suppose to output the name of the fruits.)*/
SELECT f_name FROM fruit
INTERSECT 
SELECT inv_name FROM inventory;
