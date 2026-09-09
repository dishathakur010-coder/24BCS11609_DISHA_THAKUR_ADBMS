# Top 5 Highest-Paid Employees Using Cursor

## Aim
To implement a PostgreSQL PL/pgSQL block using a cursor to fetch and display the Name and Salary of the top 5 highest-paid employees from the `staff` table.

## SQL Code

```sql
CREATE TABLE staff (
    name VARCHAR(100),
    salary NUMERIC
);

INSERT INTO staff VALUES ('Rahul', 50000);
INSERT INTO staff VALUES ('Amit', 70000);
INSERT INTO staff VALUES ('Priya', 60000);
INSERT INTO staff VALUES ('Neha', 90000);
INSERT INTO staff VALUES ('Riya', 80000);
INSERT INTO staff VALUES ('Karan', 55000);

DO $$
DECLARE
    emp_cursor CURSOR FOR
        SELECT name, salary
        FROM staff
        ORDER BY salary DESC
        LIMIT 5;

    v_name staff.name%TYPE;
    v_salary staff.salary%TYPE;

BEGIN
    OPEN emp_cursor;

    LOOP
        FETCH emp_cursor INTO v_name, v_salary;
        EXIT WHEN NOT FOUND;

        RAISE NOTICE 'Name: %, Salary: %', v_name, v_salary;
    END LOOP;

    CLOSE emp_cursor;
END $$;
