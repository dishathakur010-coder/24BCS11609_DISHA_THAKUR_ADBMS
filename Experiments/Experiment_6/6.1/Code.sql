CREATE VIEW Unsold_Items AS
SELECT ProductName, Category
FROM Products
WHERE ProductID NOT IN (
    SELECT ProductID
    FROM Order_Details
);
SELECT * FROM Unsold_Items;
