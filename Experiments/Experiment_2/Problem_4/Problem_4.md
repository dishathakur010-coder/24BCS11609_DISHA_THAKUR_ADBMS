# SQL UNION ALL - Combine Employee Names

## 📌 Problem Statement

XYZ Pvt Ltd maintains two employee tables:

- **employee** – Contains all full-time employees and a few active part-time employees.
- **pt_employee** – Contains all active and inactive part-time employees.

Write a SQL query to combine the employee names (`emp_name`) from both tables **without removing duplicate records**.

---

## 📝 SQL Query

```sql
SELECT emp_name
FROM employee

UNION ALL

SELECT emp_name
FROM pt_employee;
```

---

## 📖 Explanation

- `SELECT emp_name FROM employee` retrieves all employee names from the **employee** table.
- `SELECT emp_name FROM pt_employee` retrieves all employee names from the **pt_employee** table.
- `UNION ALL` combines the results from both tables.
- Unlike `UNION`, **duplicate names are not removed**.

---

## ⚠️ Conditions for UNION ALL

- Both `SELECT` statements must return the **same number of columns**.
- Corresponding columns should have **compatible data types**.
- The selected columns must be in the **same order**.

---

## 📥 Example

### Employee Table

| emp_name |
|----------|
| John Smith |
| Sarah Johnson |
| Tom Wilson |

### PT_Employee Table

| emp_name |
|----------|
| Tom Wilson |
| Emily Parker |
| Mike Adams |

### Output

| emp_name |
|----------|
| John Smith |
| Sarah Johnson |
| Tom Wilson |
| Tom Wilson |
| Emily Parker |
| Mike Adams |

> **Note:** `Tom Wilson` appears twice because `UNION ALL` does **not** remove duplicate records.

---

## ⏱️ Time Complexity

- **O(n + m)**

where:

- `n` = number of rows in the **employee** table
- `m` = number of rows in the **pt_employee** table

---

## 💡 Key Points

- `UNION ALL` combines the results of multiple queries.
- Duplicate rows are **preserved**.
- It is generally **faster than `UNION`** because no duplicate checking is performed.
- Both queries must have the same number of columns with compatible data types.

---

## 🔄 Difference Between UNION and UNION ALL

| Operator | Removes Duplicates | Performance |
|----------|--------------------|-------------|
| **UNION** | ✅ Yes | Slightly Slower |
| **UNION ALL** | ❌ No | Faster |

---

## ✅ Result

The query returns a single list of employee names from both the **employee** and **pt_employee** tables while preserving duplicate entries.
