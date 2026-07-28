https://leetcode.com/problems/employee-bonus/submissions/2084575813
SELECT e.name,b.bonus FROM EMPLOYEE AS e LEFT JOIN BONUS AS B ON e.empId=b.empId WHERE b.bonus<1000 OR b.bonus IS NULL;
