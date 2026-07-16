# ON DELETE CASCADE & ON UPDATE CASCADE (SQL)

This repository contains the SQL solution demonstrating the use of **ON DELETE CASCADE** and **ON UPDATE CASCADE** in relational databases.

## 📌 Problem Statement

Write a SQL query to delete **John Doe** from the `Customers` table and observe how the related records in the `Orders` table are automatically deleted due to the **ON DELETE CASCADE** constraint.

## 🗂️ Database Schema

### Customers Table
| customer_id | customer_name | city |
|-------------|---------------|------|
| 1 | John Doe | New York |
| 2 | Jane Smith | London |
| 3 | David Lee | Paris |

### Orders Table
| order_id | customer_id | order_date | amount |
|----------|-------------|------------|--------|
| 101 | 1 | 2023-01-15 | 100 |
| 102 | 2 | 2023-02-20 | 250 |
| 103 | 1 | 2023-03-10 | 50 |

The `Orders.customer_id` column is a foreign key referencing `Customers.customer_id` with:

- `ON DELETE CASCADE`
- `ON UPDATE CASCADE`

## 💻 Solution

```sql
DELETE FROM Customers
WHERE customer_name = 'John Doe';

SELECT * FROM Orders;
```

## ✅ Expected Output

After deleting **John Doe**, all orders associated with `customer_id = 1` are automatically removed.

### Remaining Records in Orders

| order_id | customer_id | order_date | amount |
|----------|-------------|------------|--------|
| 102 | 2 | 2023-02-20 | 250 |

## 📖 Key Concepts

- **ON DELETE CASCADE**
  - Automatically deletes child records when the corresponding parent record is deleted.
  - Prevents orphan records and maintains referential integrity.

- **ON UPDATE CASCADE**
  - Automatically updates foreign key values in child tables when the referenced primary key changes.

## 🚀 Learning Outcome

This exercise demonstrates how cascading actions help maintain consistency between related tables by automatically propagating delete and update operations.

## 🛠️ Technologies Used

- SQL
- MySQL / PostgreSQL (Concept Applicable)

---
