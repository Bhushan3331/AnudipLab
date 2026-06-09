mysql> use e_commerce;
Database changed
mysql> create table employee(EmployeeID varchar(15) primary key not null, EmployeeName varchar(50) not null, Salary double not null);
Query OK, 0 rows affected (0.05 sec)

mysql> insert into employee(EmployeeID,EmployeeName,Salary) values (1,'Rohan',20000),(2,'Mohan',25000),(3,'Soham',30000),(4,'Atul',35000),(5,'Riya',40000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> desc employee;
+--------------+-------------+------+-----+---------+-------+
| Field        | Type        | Null | Key | Default | Extra |
+--------------+-------------+------+-----+---------+-------+
| EmployeeID   | varchar(15) | NO   | PRI | NULL    |       |
| EmployeeName | varchar(50) | NO   |     | NULL    |       |
| Salary       | double      | NO   |     | NULL    |       |
+--------------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> select * from employee;
+------------+--------------+--------+
| EmployeeID | EmployeeName | Salary |
+------------+--------------+--------+
| 1          | Rohan        |  20000 |
| 2          | Mohan        |  25000 |
| 3          | Soham        |  30000 |
| 4          | Atul         |  35000 |
| 5          | Riya         |  40000 |
+------------+--------------+--------+
5 rows in set (0.00 sec)

mysql> update employee set salary = 50000 where
    -> EmployeeID = 1;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from employee;
+------------+--------------+--------+
| EmployeeID | EmployeeName | Salary |
+------------+--------------+--------+
| 1          | Rohan        |  50000 |
| 2          | Mohan        |  25000 |
| 3          | Soham        |  30000 |
| 4          | Atul         |  35000 |
| 5          | Riya         |  40000 |
+------------+--------------+--------+
5 rows in set (0.00 sec)

mysql> delete from employess where EmployeeID = 1;
ERROR 1146 (42S02): Table 'e_commerce.employess' doesn't exist
mysql> delete from employee where EmployeeID = 1;
Query OK, 1 row affected (0.01 sec)

mysql> delete from employee;
Query OK, 4 rows affected (0.01 sec)

mysql> select * from employee;
Empty set (0.00 sec)

mysql> insert into employee(EmployeeID,EmployeeName,Salary) values (1,'Rohan',20000),(2,'Mohan',25000),(3,'Soham',30000),(4,'Atul',35000),(5,'Riya',40000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> drop table employee;
Query OK, 0 rows affected (0.02 sec)

mysql> insert into employee(EmployeeID,EmployeeName,Salary) values (1,'Rohan',20000),(2,'Mohan',25000),(3,'Soham',30000),(4,'Atul',35000),(5,'Riya',40000);
ERROR 1146 (42S02): Table 'e_commerce.employee' doesn't exist
mysql> create table employee(EmployeeID varchar(15) primary key not null, EmployeeName varchar(50) not null, Salary double not null);
Query OK, 0 rows affected (0.03 sec)

mysql> insert into employee(EmployeeID,EmployeeName,Salary) values (1,'Rohan',20000),(2,'Mohan',25000),(3,'Soham',30000),(4,'Atul',35000),(5,'Riya',40000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> truncate table employee;
Query OK, 0 rows affected (0.04 sec)

mysql> select * from employee;
Empty set (0.00 sec)

mysql> insert into employee(EmployeeID,EmployeeName,Salary) values (1,'Rohan',20000),(2,'Mohan',25000),(3,'Soham',30000),(4,'Atul',35000),(5,'Riya',40000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> ALTER TABLE Employees
    -> ADD Email VARCHAR(100);
ERROR 1146 (42S02): Table 'e_commerce.employees' doesn't exist
mysql> ALTER TABLE Employee
    -> ADD Email VARCHAR(100);
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+------------+--------------+--------+-------+
| EmployeeID | EmployeeName | Salary | Email |
+------------+--------------+--------+-------+
| 1          | Rohan        |  20000 | NULL  |
| 2          | Mohan        |  25000 | NULL  |
| 3          | Soham        |  30000 | NULL  |
| 4          | Atul         |  35000 | NULL  |
| 5          | Riya         |  40000 | NULL  |
+------------+--------------+--------+-------+
5 rows in set (0.00 sec)

mysql> ^C
mysql> ALTER TABLE Employee
    -> MODIFY Salary DECIMAL(10,2);
Query OK, 5 rows affected (0.07 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+------------+--------------+----------+-------+
| EmployeeID | EmployeeName | Salary   | Email |
+------------+--------------+----------+-------+
| 1          | Rohan        | 20000.00 | NULL  |
| 2          | Mohan        | 25000.00 | NULL  |
| 3          | Soham        | 30000.00 | NULL  |
| 4          | Atul         | 35000.00 | NULL  |
| 5          | Riya         | 40000.00 | NULL  |
+------------+--------------+----------+-------+
5 rows in set (0.00 sec)

mysql> ALTER TABLE Employee
    -> DROP COLUMN Email;
Query OK, 0 rows affected (0.04 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+------------+--------------+----------+
| EmployeeID | EmployeeName | Salary   |
+------------+--------------+----------+
| 1          | Rohan        | 20000.00 |
| 2          | Mohan        | 25000.00 |
| 3          | Soham        | 30000.00 |
| 4          | Atul         | 35000.00 |
| 5          | Riya         | 40000.00 |
+------------+--------------+----------+
5 rows in set (0.00 sec)

mysql> ALTER TABLE Employee
    -> RENAME COLUMN EmployeeName to Name;
Query OK, 0 rows affected (0.02 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+------------+-------+----------+
| EmployeeID | Name  | Salary   |
+------------+-------+----------+
| 1          | Rohan | 20000.00 |
| 2          | Mohan | 25000.00 |
| 3          | Soham | 30000.00 |
| 4          | Atul  | 35000.00 |
| 5          | Riya  | 40000.00 |
+------------+-------+----------+
5 rows in set (0.00 sec)

mysql> ALTER TABLE Employee
    -> DROP PRIMARY KEY;
Query OK, 5 rows affected (0.07 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+------------+-------+----------+
| EmployeeID | Name  | Salary   |
+------------+-------+----------+
| 1          | Rohan | 20000.00 |
| 2          | Mohan | 25000.00 |
| 3          | Soham | 30000.00 |
| 4          | Atul  | 35000.00 |
| 5          | Riya  | 40000.00 |
+------------+-------+----------+
5 rows in set (0.00 sec)

mysql> desc employee;
+------------+---------------+------+-----+---------+-------+
| Field      | Type          | Null | Key | Default | Extra |
+------------+---------------+------+-----+---------+-------+
| EmployeeID | varchar(15)   | NO   |     | NULL    |       |
| Name       | varchar(50)   | NO   |     | NULL    |       |
| Salary     | decimal(10,2) | YES  |     | NULL    |       |
+------------+---------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> alter table employee add constraint primary key(EmployeeId);
Query OK, 0 rows affected (0.15 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc employee;
+------------+---------------+------+-----+---------+-------+
| Field      | Type          | Null | Key | Default | Extra |
+------------+---------------+------+-----+---------+-------+
| EmployeeID | varchar(15)   | NO   | PRI | NULL    |       |
| Name       | varchar(50)   | NO   |     | NULL    |       |
| Salary     | decimal(10,2) | YES  |     | NULL    |       |
+------------+---------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> select * from employee;
+------------+-------+----------+
| EmployeeID | Name  | Salary   |
+------------+-------+----------+
| 1          | Rohan | 20000.00 |
| 2          | Mohan | 25000.00 |
| 3          | Soham | 30000.00 |
| 4          | Atul  | 35000.00 |
| 5          | Riya  | 40000.00 |
+------------+-------+----------+
5 rows in set (0.00 sec)

mysql>