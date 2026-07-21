# SQL INTERSECT - Find Fruits Available in the Supermarket

## 📌 Problem Statement

Write a SQL query to display the names of fruits (`f_name`) that are available in the supermarket.

- The **fruit** table contains all fruits available in the market.
- The **inventory** table contains the updated list of items currently available in the supermarket.
- `f_name` stores the fruit names.
- `inv_name` stores the inventory item names.

Use the `INTERSECT` operator to find the common records between the two tables.

---

## 📝 SQL Query

```sql
SELECT f_name
FROM fruit

INTERSECT

SELECT inv_name
FROM inventory;
```

---

## 📖 Explanation

- `SELECT f_name FROM fruit` retrieves all fruit names.
- `SELECT inv_name FROM inventory` retrieves all inventory item names.
- `INTERSECT` returns only the rows that exist in **both** result sets.
- Duplicate values are automatically removed.

---

## ⚠️ Conditions for INTERSECT

- Both `SELECT` statements must return the **same number of columns**.
- Corresponding columns must have **compatible data types**.
- Columns should appear in the **same order** in both queries.

---

## 📥 Example

### Fruit Table

| f_name |
|--------|
| Apple |
| Banana |
| Cherry |
| Mango |
| Grape |

### Inventory Table

| inv_name |
|----------|
| Banana |
| Cherry |
| Grape |
| Milk |

### Output

| f_name |
|--------|
| Banana |
| Cherry |
| Grape |

---

## ⏱️ Time Complexity

- **O(n + m)**

where:

- `n` = number of rows in the **fruit** table
- `m` = number of rows in the **inventory** table

---

## 💡 Key Points

- `INTERSECT` returns only the rows that are common to both queries.
- Duplicate rows are removed automatically.
- Both queries must have matching column counts and compatible data types.

---

## 🔄 Difference Between UNION, INTERSECT, and EXCEPT

| Operator | Purpose |
|----------|---------|
| **UNION** | Combines rows from both queries and removes duplicates |
| **INTERSECT** | Returns only the common rows |
| **EXCEPT** | Returns rows from the first query that are not in the second |

---

## ✅ Result

The query returns the names of fruits that are present in both the **fruit** table and the **inventory** table, representing the fruits currently available in the supermarket.
