/*     
Create Database StudentManagementSystem

1.Create Table student

with attribute:  ●StudentID (Primary Key)
●Name
●Age
●Address


2.Create a table with named Feedback 

with attributes: ● FeedbackID (Primary Key) 
● StudentID (Foreign key) 
● Date 
● InstructorName 
● Feedback

Add 5 Records in table

 */



mysql> create database StudentManagementSystem;
Query OK, 1 row affected (0.01 sec)

mysql> use StudentManagementSystem;
Database changed
mysql> CREATE TABLE Student (
    ->     StudentId VARCHAR(10) NOT NULL PRIMARY KEY,
    ->     Name VARCHAR(40) NOT NULL,
    ->     Age INT NOT NULL,
    ->     Address VARCHAR(60) NOT NULL
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql> INSERT INTO Student (StudentId, Name, Age, Address)
    -> VALUES
    -> ('S001', 'Rahul Sharma', 20, 'Mumbai'),
    -> ('S002', 'Priya Patel', 21, 'Pune'),
    -> ('S003', 'Amit Kumar', 19, 'Delhi'),
    -> ('S004', 'Sneha Joshi', 22, 'Nagpur'),
    -> ('S005', 'Vikram Singh', 20, 'Jaipur');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> DESC Student;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| StudentId | varchar(10) | NO   | PRI | NULL    |       |
| Name      | varchar(40) | NO   |     | NULL    |       |
| Age       | int         | NO   |     | NULL    |       |
| Address   | varchar(60) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> SELECT * FROM Student;
+-----------+--------------+-----+---------+
| StudentId | Name         | Age | Address |
+-----------+--------------+-----+---------+
| S001      | Rahul Sharma |  20 | Mumbai  |
| S002      | Priya Patel  |  21 | Pune    |
| S003      | Amit Kumar   |  19 | Delhi   |
| S004      | Sneha Joshi  |  22 | Nagpur  |
| S005      | Vikram Singh |  20 | Jaipur  |
+-----------+--------------+-----+---------+
5 rows in set (0.00 sec)

mysql> CREATE TABLE Feedback (
    ->     FeedBackID VARCHAR(15) NOT NULL PRIMARY KEY,
    ->     StudentId VARCHAR(10) NOT NULL,
    ->     Date DATETIME NOT NULL,
    ->     IntructorName VARCHAR(50) NOT NULL,
    ->     Feedback VARCHAR(50) NOT NULL,
    ->     FOREIGN KEY (StudentId) REFERENCES Student(StudentId)
    -> );
Query OK, 0 rows affected (0.06 sec)

mysql> INSERT INTO Feedback
    -> (FeedBackID, StudentId, Date, IntructorName, Feedback)
    -> VALUES
    -> ('FB001', 'S001', '2026-06-08 10:00:00', 'Mr. Sharma', 'Excellent performance'),
    -> ('FB002', 'S002', '2026-06-08 11:00:00', 'Ms. Patil', 'Good participation'),
    -> ('FB003', 'S003', '2026-06-08 12:00:00', 'Mr. Verma', 'Needs improvement'),
    -> ('FB004', 'S004', '2026-06-08 13:00:00', 'Mrs. Joshi', 'Very punctual'),
    -> ('FB005', 'S005', '2026-06-08 14:00:00', 'Mr. Gupta', 'Good understanding');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql>
mysql> desc feedback;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| FeedBackID    | varchar(15) | NO   | PRI | NULL    |       |
| StudentId     | varchar(10) | NO   | MUL | NULL    |       |
| Date          | datetime    | NO   |     | NULL    |       |
| IntructorName | varchar(50) | NO   |     | NULL    |       |
| Feedback      | varchar(50) | NO   |     | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM Feedback;
+------------+-----------+---------------------+---------------+-----------------------+
| FeedBackID | StudentId | Date                | IntructorName | Feedback              |
+------------+-----------+---------------------+---------------+-----------------------+
| FB001      | S001      | 2026-06-08 10:00:00 | Mr. Sharma    | Excellent performance |
| FB002      | S002      | 2026-06-08 11:00:00 | Ms. Patil     | Good participation    |
| FB003      | S003      | 2026-06-08 12:00:00 | Mr. Verma     | Needs improvement     |
| FB004      | S004      | 2026-06-08 13:00:00 | Mrs. Joshi    | Very punctual         |
| FB005      | S005      | 2026-06-08 14:00:00 | Mr. Gupta     | Good understanding    |
+------------+-----------+---------------------+---------------+-----------------------+
5 rows in set (0.00 sec)
