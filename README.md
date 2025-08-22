# 📘 Intro to SQL Database

This repository provides beginner-friendly SQL scripts and exercises to help you learn fundamental database concepts and operations using Oracle SQL.

---

## 📁 Files Included

### 🔹 Part 1 – SQL Basics and Relational Algebra

| File                                   | Description                                                                 |
|----------------------------------------|-----------------------------------------------------------------------------|
| `1a_grocery_shop_schema.sql`           | SQL DDL and DML for a grocery shop system with JOIN queries and column renaming |
| `1b_university_student_department.sql` | University schema with `STUDENT` and `DEPARTMENT` tables; includes outer joins |
| `1c_relational_algebra_sql_notes.docx` | Written tutorial with relational algebra expressions mapped to SQL queries |

---

### 🔹 Part 2 – Hotel Booking System Assignment

| File                                        | Description                                                                 |
|---------------------------------------------|-----------------------------------------------------------------------------|
| `2a_hotel_booking_system_assignment.docx`   | Assignment brief including table structure, sample data, and query tasks    |
| `2b_hotel_booking_system_assignment.sql`    | Full solution: DDL, DML, and SQL queries based on the assignment scenario   |

---

### 🔹 Part 3 – PL/SQL Tutorial Exercises

| **File**                                              | **Description**                                                                 |
|-------------------------------------------------------|---------------------------------------------------------------------------------|
| `Tutorial 3-may2025.pdf`                               | Tutorial document describing PL/SQL exercises and learning objectives.           |
| `Tutorial 4-may2025.pdf`                               | Tutorial document focused on **Procedure** and **Function** in PL/SQL. Contains tasks such as creating tables, writing functions, and updating student results. |
| `Tutorial 5-may2025.pdf`                               | Tutorial document with exercises involving **functions** like calculating total orders and retrieving student info. |
| `Tutorial 6-may2025.pdf`                               | Tutorial document involving **cursor** and **trigger** examples. Includes creating a student_marks table, using a cursor to fetch student records, and applying row- and statement-level triggers. |

| **File**                                              | **Description**                                                                 |
|-------------------------------------------------------|---------------------------------------------------------------------------------|
| `tut3_q1_Salary_Calculation_with_IF-ELSE.sql`           | PL/SQL program to compute salary using **IF-ELSE** logic.                       |
| `tut3_q2_Loop_and_Arithmetic_Operations.sql`            | PL/SQL loop that prints the square and cube of numbers from 1 to 5.             |
| `tut3_q3_Character_Manipulation_Functions.sql`          | PL/SQL string manipulation using built-in functions.                            |
| `factorial.sql`                                        | PL/SQL loop that calculates the factorial of a number.                         |
| `tut4_function_procedure_UpdateStudentScores.sql`       | PL/SQL procedure that updates student scores, total, and grade in the `student_scores` table. |
| `tut5-q2_pl_sql_GetStudentInfo.sql`                     | PL/SQL function to fetch student information (full name and class name).        |
| `tut5_q1_pl_sql_orders.sql`                             | PL/SQL function to calculate the total order amount for a given customer ID.    |
| `tut6_pl_sql_cursor&trigger_studentmarks.sql`           | PL/SQL script for creating the `student_marks` table, using a cursor to fetch records, and applying triggers to prevent invalid data insertion and confirm successful insertions. |

---

## 💡 Topics Covered

- SQL table creation with primary/foreign keys (DDL)
- Data insertion (DML)
- Selection, projection, and filtering
- Aggregation and ordering
- Outer joins (LEFT, RIGHT, FULL)
- Relational algebra mapped to SQL
- PL/SQL control structures (IF-ELSE, LOOP)
- String functions (LTRIM, RTRIM, UPPER, etc.)
- Arithmetic operations and conditionals in PL/SQL
- PL/SQL create procedure and function

---

## 🛠️ Tools Used

- [Oracle Live SQL](https://livesql.oracle.com/)
- SQL Developer or any SQL-compatible IDE

---

## 📌 How to Use

1. Clone or download this repository.
2. Open `.sql` files in Oracle Live SQL or your SQL environment.
3. Review the `.docx` and `.pdf` files for tutorials and explanations.
4. Experiment, modify, and practice the queries!

---

Feel free to fork this repo or contribute improvements!

---

## Credits

**Course:** Database Technology  
**Lecturer:** Assistant Professor Dr. Ancy Micheal Antony Micheal, UCSI University  

**Creator:**  
- **Quek Hong Yaw** – Developer of the PL/SQL exercises, tutorials, and solutions in this repository.

**Acknowledgements:**  
- The exercises and tutorials in this repository were created as part of the **Database Technology** course under the guidance of **Assistant Professor Dr. Ancy Micheal Antony Micheal**.  
- Special thanks to various **PL/SQL resources** and guides that helped design the tutorials.
