mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| account                 |
| e_commerce              |
| information_schema      |
| mysql                   |
| performance_schema      |
| sakila                  |
| startersql              |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
10 rows in set (0.09 sec)

mysql> use account;
Database changed
mysql> show tables;
+-------------------+
| Tables_in_account |
+-------------------+
| bankaccount       |
+-------------------+
1 row in set (0.01 sec)

mysql> use e_commerce;;
Database changed


mysql> show tables;
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

mysql> create database joins;
Query OK, 1 row affected (0.02 sec)

mysql> use joins;
Database changed
mysql> create table department(department_id int not null primary key,department_name varchar(30) not null);
Query OK, 0 rows affected (0.05 sec)

mysql> desc department;
+-----------------+-------------+------+-----+---------+-------+
| Field           | Type        | Null | Key | Default | Extra |
+-----------------+-------------+------+-----+---------+-------+
| department_id   | int         | NO   | PRI | NULL    |       |
| department_name | varchar(30) | NO   |     | NULL    |       |
+-----------------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> insert into department values(1,'HR'),(2,'IT'),(3,'Finanace'),(4,'Marketing');
Query OK, 4 rows affected (0.01 sec)
Records: 4  Duplicates: 0  Warnings: 0

mysql> select * from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | IT              |
|             3 | Finanace        |
|             4 | Marketing       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> create table employee(employeeId int primary key not null,employee_name varchar(30) not null, department_id int ,foreign key(department_id) references department(department_id));
Query OK, 0 rows affected (0.06 sec)

mysql> desc employee;
+---------------+-------------+------+-----+---------+-------+
| Field         | Type        | Null | Key | Default | Extra |
+---------------+-------------+------+-----+---------+-------+
| employeeId    | int         | NO   | PRI | NULL    |       |
| employee_name | varchar(30) | NO   |     | NULL    |       |
| department_id | int         | YES  | MUL | NULL    |       |
+---------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)


mysql> insert into employee values(1,'Rohan',1),(2,'Mohan',2),(3,'Riya',1),(4,'roshan',null),(5,'Krishna',4);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from employee;
+------------+---------------+---------------+
| employeeId | employee_name | department_id |
+------------+---------------+---------------+
|          1 | Rohan         |             1 |
|          2 | Mohan         |             2 |
|          3 | Riya          |             1 |
|          4 | roshan        |          NULL |
|          5 | Krishna       |             4 |
+------------+---------------+---------------+
5 rows in set (0.00 sec)

mysql> select * from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | IT              |
|             3 | Finanace        |
|             4 | Marketing       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> select employee_name,department_name from employee inner join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Rohan         | HR              |
| Riya          | HR              |
| Mohan         | IT              |
| Krishna       | Marketing       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> select employee_name,department_name from employee left join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Rohan         | HR              |
| Mohan         | IT              |
| Riya          | HR              |
| roshan        | NULL            |
| Krishna       | Marketing       |
+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> select * from employee;
+------------+---------------+---------------+
| employeeId | employee_name | department_id |
+------------+---------------+---------------+
|          1 | Rohan         |             1 |
|          2 | Mohan         |             2 |
|          3 | Riya          |             1 |
|          4 | roshan        |          NULL |
|          5 | Krishna       |             4 |
+------------+---------------+---------------+
5 rows in set (0.00 sec)

mysql> select * from department;
+---------------+-----------------+
| department_id | department_name |
+---------------+-----------------+
|             1 | HR              |
|             2 | IT              |
|             3 | Finanace        |
|             4 | Marketing       |
+---------------+-----------------+
4 rows in set (0.00 sec)

mysql> select employee_name,department_name from employee left join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Rohan         | HR              |
| Mohan         | IT              |
| Riya          | HR              |
| roshan        | NULL            |
| Krishna       | Marketing       |
+---------------+-----------------+
5 rows in set (0.00 sec)

mysql> select employee_name,department_name from employee right join department on employee.department_id=department.department_id;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Rohan         | HR              |
| Riya          | HR              |
| Mohan         | IT              |
| NULL          | Finanace        |
| Krishna       | Marketing       |
+---------------+-----------------+
5 rows in set (0.01 sec)

mysql> select employee_name,department_name from employee cross join department;
+---------------+-----------------+
| employee_name | department_name |
+---------------+-----------------+
| Rohan         | Marketing       |
| Rohan         | Finanace        |
| Rohan         | IT              |
| Rohan         | HR              |
| Mohan         | Marketing       |
| Mohan         | Finanace        |
| Mohan         | IT              |
| Mohan         | HR              |
| Riya          | Marketing       |
| Riya          | Finanace        |
| Riya          | IT              |
| Riya          | HR              |
| roshan        | Marketing       |
| roshan        | Finanace        |
| roshan        | IT              |
| roshan        | HR              |
| Krishna       | Marketing       |
| Krishna       | Finanace        |
| Krishna       | IT              |
| Krishna       | HR              |
+---------------+-----------------+
20 rows in set (0.01 sec)