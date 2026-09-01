CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100),
    Category VARCHAR(50)
);

CREATE TABLE Order_Details (
    OrderID INT,
    ProductID INT,
    Quantity INT
);

INSERT INTO Products VALUES
(1, 'Laptop', 'Electronics'),
(2, 'Mouse', 'Electronics'),
(3, 'Keyboard', 'Electronics'),
(4, 'Chair', 'Furniture'),
(5, 'Table', 'Furniture');

INSERT INTO Order_Details VALUES
(101, 1, 2),
(102, 2, 1),
(103, 4, 3);

CREATE VIEW Unsold_Items AS
SELECT ProductName, Category
FROM Products
WHERE ProductID NOT IN (
    SELECT ProductID
    FROM Order_Details
);

SELECT * FROM Unsold_Items;
