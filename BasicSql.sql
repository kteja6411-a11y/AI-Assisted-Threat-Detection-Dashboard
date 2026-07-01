-- ==========================================================
-- Basic SQL Practice
-- Author: Krishna Teja
-- ==========================================================

-- ==========================================
-- Task 1 : Create Database
-- ==========================================

CREATE DATABASE infosys_internship;

-- ==========================================
-- Task 2 : Use Database
-- ==========================================

USE infosys_internship;

-- ==========================================
-- Task 3 : Create Students Table
-- ==========================================

CREATE TABLE Students (
    Student_ID INT PRIMARY KEY,
    Student_Name VARCHAR(50),
    Branch VARCHAR(30),
    Age INT,
    Marks INT
);

-- ==========================================
-- Task 4 : Insert Records into Students
-- ==========================================

INSERT INTO Students VALUES
(101,'Krishna','CSD',20,91),
(102,'Rahul','CSE',21,84),
(103,'Priya','AI',20,96),
(104,'Sneha','IT',19,78),
(105,'Arjun','CSD',20,88);

-- ==========================================
-- Task 5 : Display All Students
-- ==========================================

SELECT * FROM Students;

-- ==========================================
-- Task 6 : Students with Marks Above 85
-- ==========================================

SELECT *
FROM Students
WHERE Marks > 85;

-- ==========================================
-- Task 7 : Students from CSD Branch
-- ==========================================

SELECT *
FROM Students
WHERE Branch = 'CSD';

-- ==========================================
-- Task 8 : Highest Marks
-- ==========================================

SELECT MAX(Marks) AS Highest_Marks
FROM Students;

-- ==========================================
-- Task 9 : Lowest Marks
-- ==========================================

SELECT MIN(Marks) AS Lowest_Marks
FROM Students;

-- ==========================================
-- Task 10 : Average Marks
-- ==========================================

SELECT ROUND(AVG(Marks),2) AS Average_Marks
FROM Students;

-- ==========================================
-- Task 11 : Total Students
-- ==========================================

SELECT COUNT(*) AS Total_Students
FROM Students;

-- ==========================================
-- Task 12 : Total Marks
-- ==========================================

SELECT SUM(Marks) AS Total_Marks
FROM Students;

-- ==========================================
-- Task 13 : Sort Students by Marks
-- ==========================================

SELECT *
FROM Students
ORDER BY Marks DESC;

-- ==========================================
-- Task 14 : Top 3 Students
-- ==========================================

SELECT *
FROM Students
ORDER BY Marks DESC
LIMIT 3;

-- ==========================================
-- Task 15 : BETWEEN Operator
-- ==========================================

SELECT *
FROM Students
WHERE Marks BETWEEN 80 AND 95;

-- ==========================================
-- Task 16 : LIKE Operator
-- ==========================================

SELECT *
FROM Students
WHERE Student_Name LIKE 'K%';

-- ==========================================
-- Task 17 : IN Operator
-- ==========================================

SELECT *
FROM Students
WHERE Branch IN ('CSD','AI');

-- ==========================================
-- Task 18 : DISTINCT Branches
-- ==========================================

SELECT DISTINCT Branch
FROM Students;

-- ==========================================
-- Task 19 : GROUP BY
-- ==========================================

SELECT
    Branch,
    COUNT(*) AS Total_Students
FROM Students
GROUP BY Branch;

-- ==========================================
-- Task 20 : HAVING
-- ==========================================

SELECT
    Branch,
    AVG(Marks) AS Average_Marks
FROM Students
GROUP BY Branch
HAVING AVG(Marks) > 85;

-- ==========================================
-- Task 21 : Create Departments Table
-- ==========================================

CREATE TABLE Departments (
    Department_ID INT PRIMARY KEY,
    Department_Name VARCHAR(30)
);

-- ==========================================
-- Task 22 : Insert Records into Departments
-- ==========================================

INSERT INTO Departments VALUES
(1,'CSD'),
(2,'CSE'),
(3,'AI'),
(4,'IT'),
(5,'ECE');

-- ==========================================
-- Task 23 : INNER JOIN
-- ==========================================

SELECT
    Students.Student_Name,
    Students.Branch,
    Departments.Department_Name
FROM Students
INNER JOIN Departments
ON Students.Branch = Departments.Department_Name;

-- ==========================================
-- Task 24 : LEFT JOIN
-- ==========================================

SELECT
    Students.Student_Name,
    Students.Branch,
    Departments.Department_Name
FROM Students
LEFT JOIN Departments
ON Students.Branch = Departments.Department_Name;

-- ==========================================
-- Task 25 : RIGHT JOIN
-- ==========================================

SELECT
    Students.Student_Name,
    Students.Branch,
    Departments.Department_Name
FROM Students
RIGHT JOIN Departments
ON Students.Branch = Departments.Department_Name;