# Populate Data in Hospital Management Database (SQL)

This repository contains the SQL solution for populating the Hospital Management Database with the given records and retrieving the first record from the `Doctors`, `Patients`, and `Appointments` tables.

## 📌 Problem Statement

Write SQL queries to populate the following tables with the given data and retrieve the first record from the `Doctors`, `Patients`, and `Appointments` tables.

## 🗂️ Database Schema

### Doctors Table

| DoctorID | Name | Specialization | ContactNumber | Email |
|----------|------|----------------|---------------|-------|
| 1 | Dr. John Smith | Cardiologist | 9876543210 | john.smith@example.com |
| 2 | Dr. Emily Davis | Pediatrician | 9876543211 | emily.davis@example.com |
| 3 | Dr. Michael Brown | Orthopedic | 9876543212 | michael.brown@example.com |

### Patients Table

| PatientID | Name | DateOfBirth | Gender | ContactNumber | Address |
|-----------|------|-------------|--------|---------------|---------|
| 1 | Alice Johnson | 1995-06-15 | Female | 9876543220 | New York |
| 2 | Bob Williams | 1988-03-22 | Male | 9876543221 | Los Angeles |
| 3 | Charlie Miller | 2001-09-10 | Male | 9876543222 | Chicago |

### Appointments Table

| AppointmentID | PatientID | DoctorID | AppointmentDate | Status |
|---------------|-----------|----------|-----------------|--------|
| 1 | 1 | 2 | 2025-07-10 | Scheduled |
| 2 | 2 | 1 | 2025-07-11 | Completed |
| 3 | 3 | 3 | 2025-07-12 | Cancelled |

The remaining tables (`Treatments`, `MedicalRecords`, and `Billing`) are also populated using the provided SQL `INSERT` statements while maintaining relationships through primary and foreign keys.

## 💻 Solution

Populate all six tables using SQL `INSERT INTO` statements.

Retrieve the required records using:

```sql
SELECT * FROM Doctors
WHERE DoctorID = 1;

SELECT * FROM Patients
WHERE PatientID = 1;

SELECT * FROM Appointments
WHERE AppointmentID = 1;
```

## ✅ Expected Output

After executing the SQL queries:

- All records are successfully inserted into the database.
- The first record from the **Doctors** table is displayed.
- The first record from the **Patients** table is displayed.
- The first record from the **Appointments** table is displayed.

## 📖 Key Concepts

- **INSERT INTO**
  - Inserts new records into database tables.
  - Populates multiple related tables with structured data.

- **SELECT Statement**
  - Retrieves records from a table.
  - The `WHERE` clause filters rows based on a given condition.

- **Primary & Foreign Keys**
  - Maintain relationships between tables.
  - Ensure referential integrity within the database.

## 🚀 Learning Outcome

This exercise demonstrates how to populate multiple related tables in a relational database and retrieve specific records using SQL queries while maintaining relationships between tables.

## 🛠️ Technologies Used

- SQL
- MySQL / PostgreSQL (Concept Applicable)

---
