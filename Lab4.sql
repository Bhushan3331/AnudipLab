-- Create database Studentmanagementsystem contain  "Student" table with the following a columns:StudentId,FirstName,lastName and "Course" table with the following a columns: CourseId,CourseName  and Enrollment table with the following a columns:EnrollmentID,StudentID(Foreign key),CourseID(Foreign Key).

-- You want to use inner join to generate a list of all possible student-course combinations.




mysql> CREATE DATABASE StudentManagementSystem;
Query OK, 1 row affected (0.01 sec)

mysql> USE StudentManagementSystem;
Database changed
mysql> CREATE TABLE Student (
    ->     StudentID INT PRIMARY KEY,
    ->     FirstName VARCHAR(50),
    ->     LastName VARCHAR(50)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> CREATE TABLE Course (
    ->     CourseID INT PRIMARY KEY,
    ->     CourseName VARCHAR(100)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> CREATE TABLE Enrollment (
    ->     EnrollmentID INT PRIMARY KEY,
    ->     StudentID INT,
    ->     CourseID INT,
    ->     FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    ->     FOREIGN KEY (CourseID) REFERENCES Course(CourseID)
    -> );
Query OK, 0 rows affected (0.08 sec)

mysql> INSERT INTO Student VALUES
    -> (1, 'John', 'Smith'),
    -> (2, 'Alice', 'Johnson'),
    -> (3, 'Bob', 'Brown'),
    -> (4, 'Emma', 'Davis'),
    -> (5, 'Michael', 'Wilson');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Course VALUES
    -> (101, 'Database Management'),
    -> (102, 'Java Programming'),
    -> (103, 'Web Development'),
    -> (104, 'Python Programming'),
    -> (105, 'Data Structures');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> INSERT INTO Enrollment VALUES
    -> (1, 1, 101),
    -> (2, 2, 102),
    -> (3, 3, 103),
    -> (4, 4, 104),
    -> (5, 5, 105);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0



mysql> select * from student;
+-----------+-----------+----------+
| StudentID | FirstName | LastName |
+-----------+-----------+----------+
|         1 | John      | Smith    |
|         2 | Alice     | Johnson  |
|         3 | Bob       | Brown    |
|         4 | Emma      | Davis    |
|         5 | Michael   | Wilson   |
+-----------+-----------+----------+
5 rows in set (0.00 sec)

mysql> select * from course;
+----------+---------------------+
| CourseID | CourseName          |
+----------+---------------------+
|      101 | Database Management |
|      102 | Java Programming    |
|      103 | Web Development     |
|      104 | Python Programming  |
|      105 | Data Structures     |
+----------+---------------------+
5 rows in set (0.00 sec)

mysql> select * from enrollment;
+--------------+-----------+----------+
| EnrollmentID | StudentID | CourseID |
+--------------+-----------+----------+
|            1 |         1 |      101 |
|            2 |         2 |      102 |
|            3 |         3 |      103 |
|            4 |         4 |      104 |
|            5 |         5 |      105 |
+--------------+-----------+----------+
5 rows in set (0.00 sec)


mysql> SELECT Student.StudentId,Student.FirstName,Student.LastName,Course.CourseId,Course.CourseName FROM Enrollment INNER JOIN Student ON Enrollment.StudentID = Student.StudentId INNER JOIN Course ON Enrollment.CourseID = Course.CourseId;
+-----------+-----------+----------+----------+---------------------+
| StudentId | FirstName | LastName | CourseId | CourseName          |
+-----------+-----------+----------+----------+---------------------+
|         1 | John      | Smith    |      101 | Database Management |
|         2 | Alice     | Johnson  |      102 | Java Programming    |
|         3 | Bob       | Brown    |      103 | Web Development     |
|         4 | Emma      | Davis    |      104 | Python Programming  |
|         5 | Michael   | Wilson   |      105 | Data Structures     |
+-----------+-----------+----------+----------+---------------------+
5 rows in set (0.00 sec)