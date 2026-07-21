# SQL UNION - Stack Two Tables

## 📌 Problem Statement

Write a SQL query using `UNION` to stack the table **Arts** over **Science** and display the combined result.

The `UNION` operator combines the rows from two or more `SELECT` statements and removes duplicate records.

---

## 📝 SQL Query

```sql
SELECT *
FROM Arts

UNION

SELECT *
FROM Science;
```

---

## 📖 Explanation

- `SELECT * FROM Arts` retrieves all records from the **Arts** table.
- `UNION` combines the result with another query.
- `SELECT * FROM Science` retrieves all records from the **Science** table.
- Duplicate rows are automatically removed because `UNION` returns only distinct records.

---

## ⚠️ Conditions for UNION

- Both tables must have the **same number of columns**.
- Corresponding columns must have **compatible data types**.
- The column order should be the same in both tables.

---

## 📥 Example

### Arts Table

| Student_ID | Name |
|------------|------|
| 101 | Rahul |
| 102 | Priya |

### Science Table

| Student_ID | Name |
|------------|------|
| 103 | Aman |
| 104 | Neha |

### Output

| Student_ID | Name |
|------------|------|
| 101 | Rahul |
| 102 | Priya |
| 103 | Aman |
| 104 | Neha |

---

## ⏱️ Time Complexity

- **O(n + m)**

where:
- `n` = number of rows in Arts
- `m` = number of rows in Science

---

## 💡 Key Difference

| UNION | UNION ALL |
|--------|-----------|
| Removes duplicate rows | Keeps duplicate rows |
| Slightly slower | Faster |

---

## ✅ Result

The query stacks all records from **Arts** and **Science** into a single result set while removing duplicate rows.
