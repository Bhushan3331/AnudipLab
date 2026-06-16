mysql> select * from employees;
+------------+---------------+------------+--------+
| employeeID | name          | department | salary |
+------------+---------------+------------+--------+
|        101 | Alice Johnson | HR         |  65000 |
|        102 | Bob Smith     | IT         |  85000 |
|        103 | Charlie Brown | IT         |  92000 |
|        104 | Diana Prince  | Marketing  |  71000 |
|        105 | Evan Wright   | Finance    |  78000 |
+------------+---------------+------------+--------+
5 rows in set (0.02 sec)

mysql> delimiter //
mysql> create procedure getEmployeesDetails()
    -> begin
    ->     select * from employees;
    -> end //
Query OK, 0 rows affected (0.02 sec)


mysql> delimiter ;
mysql> call getEmployeesDetails();
+------------+---------------+------------+--------+
| employeeID | name          | department | salary |
+------------+---------------+------------+--------+
|        101 | Alice Johnson | HR         |  65000 |
|        102 | Bob Smith     | IT         |  85000 |
|        103 | Charlie Brown | IT         |  92000 |
|        104 | Diana Prince  | Marketing  |  71000 |
|        105 | Evan Wright   | Finance    |  78000 |
+------------+---------------+------------+--------+
5 rows in set (0.01 sec)

Query OK, 0 rows affected (0.02 sec)

mysql> delimiter //
mysql> create procedure getEmployeeByDepartment(in name varchar(10))
    -> begin
    -> select * from employees where department = name;
    -> end //
Query OK, 0 rows affected (0.01 sec)

mysql> delimiter ;
mysql> call getEmployeeByDepartment('HR');
+------------+---------------+------------+--------+
| employeeID | name          | department | salary |
+------------+---------------+------------+--------+
|        101 | Alice Johnson | HR         |  65000 |
+------------+---------------+------------+--------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> call getEmployeeByDepartment('Marketing');
+------------+--------------+------------+--------+
| employeeID | name         | department | salary |
+------------+--------------+------------+--------+
|        104 | Diana Prince | Marketing  |  71000 |
+------------+--------------+------------+--------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.01 sec)

mysql> delimiter //
mysql> create procedure getEmployeeCount(out total int)
    -> begin
    -> select count(*) into total
    -> from employees;
    -> end //
Query OK, 0 rows affected (0.01 sec)

mysql> delimiter ;
mysql> call getEmployeeCount(@total);
Query OK, 1 row affected (0.01 sec)

mysql> select @total;
+--------+
| @total |
+--------+
|      5 |
+--------+
1 row in set (0.01 sec)


mysql> select * from employees;
+------------+---------------+------------+--------+
| employeeID | name          | department | salary |
+------------+---------------+------------+--------+
|        101 | Alice Johnson | HR         |  65000 |
|        102 | Bob Smith     | IT         |  85000 |
|        103 | Charlie Brown | IT         |  92000 |
|        104 | Diana Prince  | Marketing  |  71000 |
|        105 | Evan Wright   | Finance    |  78000 |
+------------+---------------+------------+--------+
5 rows in set (0.00 sec)


mysql> desc employees;
   
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| employeeID | int         | NO   |     | NULL    |       |
| name       | varchar(50) | NO   |     | NULL    |       |
| department | varchar(50) | NO   |     | NULL    |       |
| salary     | double      | NO   |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> delimiter //
mysql> create procedure addEmployee(in id int,in name varchar(50),in department varchar(50),in salary double)
    -> begin
    -> insert into employees values(id,name,department,salary);
    -> end //
Query OK, 0 rows affected (0.02 sec)

mysql> delimiter ;
mysql> call addEmployee(106,'Rohan Singh','HR',50000);
Query OK, 1 row affected (0.01 sec)

mysql> select * from employees;
+------------+---------------+------------+--------+
| employeeID | name          | department | salary |
+------------+---------------+------------+--------+
|        101 | Alice Johnson | HR         |  65000 |
|        102 | Bob Smith     | IT         |  85000 |
|        103 | Charlie Brown | IT         |  92000 |
|        104 | Diana Prince  | Marketing  |  71000 |
|        105 | Evan Wright   | Finance    |  78000 |
|        106 | Rohan Singh   | HR         |  50000 |
+------------+---------------+------------+--------+
6 rows in set (0.00 sec)
