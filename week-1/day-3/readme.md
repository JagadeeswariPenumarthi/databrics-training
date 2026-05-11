# SQL Query Practice – Employee Database

This repository contains SQL practice queries using an `Employees` table.
The queries cover important SQL concepts such as:

* SELECT
* WHERE
* GROUP BY
* HAVING
* LIMIT
* DISTINCT
* Comparison Operators
* Logical Operators
* IN / NOT IN
* BETWEEN
* LIKE Operator

---

# Table Used

```sql
CREATE TABLE Employees (
    emp_id INT,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT,
    city VARCHAR(50),
    experience INT
);
```

---

# Sample Data

The table contains employee details such as:

* Employee ID
* Employee Name
* Department
* Salary
* City
* Experience

Departments used:

* IT
* HR
* Finance
* Sales

Cities used:

* Hyderabad
* Chennai
* Bangalore
* Mumbai
* Pune

---

# Topics Practiced

## SELECT

Basic retrieval of data from the table.

Examples:

* Display all employees
* Display employee names and salaries
* Display employees from IT department

---

## WHERE

Filtering records using conditions.

Examples:

* Salary greater than 70000
* Employees from Hyderabad
* Experience less than 4 years

---

## GROUP BY

Grouping data to perform calculations.

Examples:

* Department-wise total salary
* Average salary per department
* Employee count city-wise

---

## HAVING

Filtering grouped records.

Examples:

* Departments with more than 3 employees
* Cities having more than 2 employees
* Departments with total salary greater than 200000

---

## LIMIT (MySQL)

Displaying limited number of records.

Examples:

* Top 5 highest paid employees
* Top 3 experienced employees

---

## DISTINCT

Displaying unique values.

Examples:

* Distinct department names
* Distinct cities
* Distinct salary values

---

## Comparison Operators

Using operators such as:

* `>`
* `<`
* `>=`
* `<=`
* `<>`

---

## Logical Operators

Using:

* AND
* OR
* NOT

---

## IN / NOT IN

Checking multiple values inside conditions.

Examples:

* Employees from Hyderabad or Mumbai
* Employees not in HR department

---

## BETWEEN

Filtering records within a range.

Examples:

* Salary between 50000 and 80000
* Experience between 3 and 6 years

---

## LIKE Operator

Pattern matching using wildcards.

Examples:

* Names starting with 'R'
* Names ending with 'a'
* Cities starting with 'B'

---

# Database Used

* MySQL 5.7
* DB Fiddle

---
