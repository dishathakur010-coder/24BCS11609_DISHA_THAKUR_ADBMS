https://leetcode.com/problems/customers-who-never-order/submissions/2076640093/

# Write your MySQL query statement below
SELECT Name AS Customers FROM Customers
WHERE id NOT IN(
    SELECT customerId FROM Orders
)
