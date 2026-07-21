# SQL EXCEPT - Find Fruits Not Present in Inventory

## 📌 Problem Statement

Write a SQL query to display the names of fruits (`f_name`) from the **fruit** table that are **not present** in the **inventory** table.

- `f_name` contains the names of fruits.
- `inv_name` contains the names of items available in the inventory.

Use the `EXCEPT` operator to find the difference between the two tables.

---

## 📝 SQL Query

```sql
SELECT f_name
FROM fruit

EXCEPT

SELECT inv_name
FROM inventory;
```

---

## 📖 Explanation

- `SELECT f_name FROM fruit` retrieves all fruit names.
- `SELECT inv_name FROM inventory` retrieves all inventory item names.
- `EXCEPT` returns only those fruit names that are present in the **fruit** table but **not** in the **inventory** table.
- Duplicate values are automatically removed.

---

## ⚠️ Conditions for EXCEPT

- Both `SELECT` statements must return the **same number of columns**.
- Corresponding columns must have **compatible data types**.
- The order of the selected columns should be the same.

---

## 📥 Example

### Fruit Table

| f_name |
|--------|
| Apple |
| Banana |
| Mango |
| Orange |

### Inventory Table

| inv_name |
|----------|
| Banana |

### Output

| f_name |
|--------|
| Apple |
| Mango |
| Orange |

---

## ⏱️ Time Complexity

- **O(n + m)**

where:

- `n` = number of rows in the **fruit** table
- `m` = number of rows in the **inventory** table

---

## 💡 Key Points

- `EXCEPT` returns rows from the **first query** that are **not present** in the **second query**.
- Duplicate rows are removed automatically.
- Both queries must have matching column counts and compatible data types.

---

## ✅ Result

The query lists all fruits available in the **fruit** table that are **missing from the inventory**.
