
mysql> use e_commerce;
Database changed
mysql> show tables;
+----------------------+
| Tables_in_e_commerce |
+----------------------+
| customer             |
| employee             |
| order_details        |
| product              |
+----------------------+
4 rows in set (0.07 sec)

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
5 rows in set (0.01 sec)

mysql> select * from employee where salary
    -> > 30000;
+------------+------+----------+
| EmployeeID | Name | Salary   |
+------------+------+----------+
| 4          | Atul | 35000.00 |
| 5          | Riya | 40000.00 |
+------------+------+----------+
2 rows in set (0.00 sec)

mysql> select * from employee order by salary desc;
+------------+-------+----------+
| EmployeeID | Name  | Salary   |
+------------+-------+----------+
| 5          | Riya  | 40000.00 |
| 4          | Atul  | 35000.00 |
| 3          | Soham | 30000.00 |
| 2          | Mohan | 25000.00 |
| 1          | Rohan | 20000.00 |
+------------+-------+----------+
5 rows in set (0.00 sec)

mysql> select * from employee order by salary asc;
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

mysql> show tables;
+----------------------+
| Tables_in_e_commerce |
+----------------------+
| customer             |
| employee             |
| order_details        |
| product              |
+----------------------+
4 rows in set (0.00 sec)

mysql> select * from order_details;
+----------+-------------+------------+----------+-------------+------------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode     | order_date          | order_status |
+----------+-------------+------------+----------+-------------+------------------+---------------------+--------------+
|      101 | C101        | P101       |        2 |        1300 | UPI              | 2026-06-01 10:15:00 | Delivered    |
|      102 | C102        | P102       |        1 |         750 | Credit Card      | 2026-06-02 14:30:00 | Delivered    |
|      103 | C103        | P103       |        1 |        3999 | Net Banking      | 2026-06-03 09:45:00 | Shipped      |
|      104 | C104        | P104       |        3 |        2997 | Cash on Delivery | 2026-06-04 16:20:00 | Processing   |
|      105 | C105        | P105       |        2 |        2998 | UPI              | 2026-06-05 11:10:00 | Delivered    |
+----------+-------------+------------+----------+-------------+------------------+---------------------+--------------+
5 rows in set (0.00 sec)

mysql> create table orders(order_id int primary key not null, department varchar(50) not null,amount double not null);
Query OK, 0 rows affected (0.08 sec)

mysql> insert into orders values(1,'HR',20000),(2,'Sales',25000),(3,'HR',30000);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from orders;
+----------+------------+--------+
| order_id | department | amount |
+----------+------------+--------+
|        1 | HR         |  20000 |
|        2 | Sales      |  25000 |
|        3 | HR         |  30000 |
+----------+------------+--------+
3 rows in set (0.00 sec)

mysql> select department, sum(amount) as total_amount;
ERROR 1054 (42S22): Unknown column 'department' in 'field list'
mysql> select department, sum(amount) as total_amount from orders group by orders;
ERROR 1054 (42S22): Unknown column 'orders' in 'group statement'
mysql> select department, sum(amount) as total_amount from orders group by department;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| HR         |        50000 |
| Sales      |        25000 |
+------------+--------------+
2 rows in set (0.01 sec)

mysql> select department, avg(amount) as average from orders group by department;
+------------+---------+
| department | average |
+------------+---------+
| HR         |   25000 |
| Sales      |   25000 |
+------------+---------+
2 rows in set (0.00 sec)

mysql> select department,sum(amount) as total_amount from orders group by department having amount > 20000;
ERROR 1054 (42S22): Unknown column 'amount' in 'having clause'
mysql> select department,sum(amount) as total_amount from orders group by department having sum(amount)>20000;
+------------+--------------+
| department | total_amount |
+------------+--------------+
| HR         |        50000 |
| Sales      |        25000 |
+------------+--------------+
2 rows in set (0.00 sec)

mysql> select department,sum(amount) as total_amount from orders group by department where amount>20000;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where amount>20000' at line 1
mysql> create table employees(employeeID int not null, name varchar(50) not null,department varchar(50) not null,salary double not null);
Query OK, 0 rows affected (0.03 sec)

mysql> INSERT INTO employees (employeeID, name, department, salary) VALUES
    -> (101, 'Alice Johnson', 'HR', 65000.00),
    -> (102, 'Bob Smith', 'IT', 85000.00),
    -> (103, 'Charlie Brown', 'IT', 92000.00),
    -> (104, 'Diana Prince', 'Marketing', 71000.00),
    -> (105, 'Evan Wright', 'Finance', 78000.00);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

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

mysql> select department,count(*) as total_employee from employees group by department;
+------------+----------------+
| department | total_employee |
+------------+----------------+
| HR         |              1 |
| IT         |              2 |
| Marketing  |              1 |
| Finance    |              1 |
+------------+----------------+
4 rows in set (0.00 sec)

mysql> select department,sum(salary) as total_employee from employees group by department;
+------------+----------------+
| department | total_employee |
+------------+----------------+
| HR         |          65000 |
| IT         |         177000 |
| Marketing  |          71000 |
| Finance    |          78000 |
+------------+----------------+
4 rows in set (0.00 sec)

mysql> select department,avg(salary) as total_employee from employees group by department;
+------------+----------------+
| department | total_employee |
+------------+----------------+
| HR         |          65000 |
| IT         |          88500 |
| Marketing  |          71000 |
| Finance    |          78000 |
+------------+----------------+
4 rows in set (0.00 sec)

mysql> select department, salary, count(*) from employees groub by department, salary;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'by department, salary' at line 1
mysql> select department, salary, count(*) from employees group by department, salary;
+------------+--------+----------+
| department | salary | count(*) |
+------------+--------+----------+
| HR         |  65000 |        1 |
| IT         |  85000 |        1 |
| IT         |  92000 |        1 |
| Marketing  |  71000 |        1 |
| Finance    |  78000 |        1 |
+------------+--------+----------+
5 rows in set (0.00 sec)

mysql> select department,count(*) as total from employees group by department having count(*)>1;
+------------+-------+
| department | total |
+------------+-------+
| IT         |     2 |
+------------+-------+
1 row in set (0.00 sec)

mysql> select department,count(*) as total from employees group by department having count(*)<1;
Empty set (0.00 sec)

mysql> select department,count(*) as total from employees group by department having count(*)<=1;
+------------+-------+
| department | total |
+------------+-------+
| HR         |     1 |
| Marketing  |     1 |
| Finance    |     1 |
+------------+-------+
3 rows in set (0.00 sec)

mysql> show tables
    -> ;
+----------------------+
| Tables_in_e_commerce |
+----------------------+
| customer             |
| employee             |
| employees            |
| order_details        |
| orders               |
| product              |
+----------------------+
6 rows in set (0.00 sec)

mysql> select department, count(*) from employees where count(*)>1 groub by deprtment;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'groub by deprtment' at line 1
mysql> select department, count(*) from employees grou by deprtment having count(*)>1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'by deprtment having count(*)>1' at line 1
mysql> select department, count(*) from employees grou by department having count(*)>1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'by department having count(*)>1' at line 1
mysql> select department, count(*) from employees group by department having count(*)>1;
+------------+----------+
| department | count(*) |
+------------+----------+
| IT         |        2 |
+------------+----------+
1 row in set (0.00 sec)
