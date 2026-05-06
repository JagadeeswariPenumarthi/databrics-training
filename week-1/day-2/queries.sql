-- Q33. Sort employees by hire date
SELECT *
FROM Employee
ORDER BY hire_date ASC;

-- Q34. Sort employees by department and salary
SELECT *
FROM Employee
ORDER BY department_id, salary;

-- Q35. Sort departments by total salary
SELECT department_id,
SUM(salary) AS total_salary
FROM Employee
GROUP BY department_id
ORDER BY total_salary DESC;

-- Q36. Display employee names with department names
SELECT e.name AS employee_name,
d.name AS department_name
FROM Employee e
JOIN Department d
ON e.department_id = d.department_id;

-- Q37. Display project names with department names
SELECT p.name AS project_name,
d.name AS department_name
FROM Project p
JOIN Department d
ON p.department_id = d.department_id;

-- Q38. Display employee names with project names
SELECT e.name AS employee_name,
p.name AS project_name
FROM Employee e
JOIN Project p
ON e.department_id = p.department_id;

-- Q39. Perform LEFT JOIN on Employee and Department
SELECT e.*, d.name AS department_name
FROM Employee e
LEFT JOIN Department d
ON e.department_id = d.department_id;

-- Q40. Perform LEFT JOIN on Department and Employee
SELECT d.name AS department_name,
e.name AS employee_name
FROM Department d
LEFT JOIN Employee e
ON d.department_id = e.department_id;

-- Q41. Find employees working in departments without projects
SELECT *
FROM Employee
WHERE department_id NOT IN (
SELECT department_id
FROM Project
);

-- Q42. Count projects in each department
SELECT d.name,
COUNT(p.project_id) AS project_count
FROM Department d
LEFT JOIN Project p
ON d.department_id = p.department_id
GROUP BY d.name;

-- Q43. Find departments without employees
SELECT d.*
FROM Department d
LEFT JOIN Employee e
ON d.department_id = e.department_id
WHERE e.emp_id IS NULL;

-- Q44. Find employees in same department as John Doe
SELECT name
FROM Employee
WHERE department_id = (
SELECT department_id
FROM Employee
WHERE name = 'John Doe'
);

-- Q45. Find department with highest average salary
SELECT d.name
FROM Department d
JOIN Employee e
ON d.department_id = e.department_id
GROUP BY d.name
ORDER BY AVG(e.salary) DESC
LIMIT 1;

-- Q46. Find employee with highest salary
SELECT *
FROM Employee
WHERE salary = (
SELECT MAX(salary)
FROM Employee
);

-- Q47. Find employees earning above average salary
SELECT *
FROM Employee
WHERE salary > (
SELECT AVG(salary)
FROM Employee
);

-- Q48. Find second highest salary
SELECT MAX(salary)
FROM Employee
WHERE salary < (
SELECT MAX(salary)
FROM Employee
);

-- Q49. Find department with maximum employees
SELECT department_id,
COUNT(*) AS employee_count
FROM Employee
GROUP BY department_id
ORDER BY employee_count DESC
LIMIT 1;

-- Q50. Find employees earning above department average salary
SELECT *
FROM Employee e1
WHERE salary > (
SELECT AVG(salary)
FROM Employee e2
WHERE e1.department_id = e2.department_id
);

-- Q51. Find third highest salary
SELECT DISTINCT salary
FROM Employee e1
WHERE 3 = (
SELECT COUNT(DISTINCT salary)
FROM Employee e2
WHERE e2.salary >= e1.salary
);

-- Q52. Find employees older than all employees in HR department
SELECT *
FROM Employee
WHERE age > ALL (
SELECT age
FROM Employee
WHERE department_id = (
SELECT department_id
FROM Department
WHERE name = 'HR'
)
);

-- Q53. Find departments with average salary above 55000
SELECT department_id,
AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id
HAVING AVG(salary) > 55000;

-- Q54. Find employees working in departments with at least 2 projects
SELECT *
FROM Employee
WHERE department_id IN (
SELECT department_id
FROM Project
GROUP BY department_id
HAVING COUNT(*) >= 2
);

-- Q55. Find employees hired on same date as Jane Smith
SELECT *
FROM Employee
WHERE hire_date = (
SELECT hire_date
FROM Employee
WHERE name = 'Jane Smith'
);

-- Q56. Find total salary of employees hired in 2020
SELECT SUM(salary) AS total_salary
FROM Employee
WHERE YEAR(hire_date) = 2020;

-- Q57. Find average salary department-wise in descending order
SELECT department_id,
AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id
ORDER BY avg_salary DESC;

-- Q58. Find departments with more than 1 employee and average salary above 55000
SELECT department_id,
COUNT(*) AS employee_count,
AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id
HAVING COUNT(*) > 1
AND AVG(salary) > 55000;

-- Q59. Find employees hired in last 2 years sorted by hire date
SELECT *
FROM Employee
WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 2 YEAR)
ORDER BY hire_date;

-- Q60. Find departments with more than 2 employees
SELECT department_id,
COUNT(*) AS total_employees,
AVG(salary) AS avg_salary
FROM Employee
GROUP BY department_id
HAVING COUNT(*) > 2;

-- Q61. Find employees earning above department average
SELECT name, salary
FROM Employee e1
WHERE salary > (
SELECT AVG(salary)
FROM Employee e2
WHERE e1.department_id = e2.department_id
);

-- Q62. Find employee hired earliest
SELECT name
FROM Employee
WHERE hire_date = (
SELECT MIN(hire_date)
FROM Employee
);

-- Q63. Find departments with maximum projects
SELECT d.name,
COUNT(p.project_id) AS total_projects
FROM Department d
LEFT JOIN Project p
ON d.department_id = p.department_id
GROUP BY d.name
ORDER BY total_projects DESC;

-- Q64. Find highest paid employee in each department
SELECT e.*
FROM Employee e
WHERE salary = (
SELECT MAX(salary)
FROM Employee e2
WHERE e.department_id = e2.department_id
);

-- Q65. Find employees older than department average age
SELECT name, age
FROM Employee e1
WHERE age > (
SELECT AVG(age)
FROM Employee e2
WHERE e1.department_id = e2.department_id
);
