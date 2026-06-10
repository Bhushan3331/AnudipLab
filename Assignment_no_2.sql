mysql> use e_commerce;
Database changed
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
5 rows in set (0.04 sec)

mysql> select * from employee limit 4;
+------------+-------+----------+
| EmployeeID | Name  | Salary   |
+------------+-------+----------+
| 1          | Rohan | 20000.00 |
| 2          | Mohan | 25000.00 |
| 3          | Soham | 30000.00 |
| 4          | Atul  | 35000.00 |
+------------+-------+----------+
4 rows in set (0.00 sec)

mysql> select * from employee limit 2;
+------------+-------+----------+
| EmployeeID | Name  | Salary   |
+------------+-------+----------+
| 1          | Rohan | 20000.00 |
| 2          | Mohan | 25000.00 |
+------------+-------+----------+
2 rows in set (0.00 sec)

mysql> select * from employee order by salary;
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

mysql> select * from employee where salary = 25000.00 order by salary;
+------------+-------+----------+
| EmployeeID | Name  | Salary   |
+------------+-------+----------+
| 2          | Mohan | 25000.00 |
+------------+-------+----------+
1 row in set (0.01 sec)

mysql> select * from employee where salary = 25000.00 order by Name;
+------------+-------+----------+
| EmployeeID | Name  | Salary   |
+------------+-------+----------+
| 2          | Mohan | 25000.00 |
+------------+-------+----------+
1 row in set (0.00 sec)

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

mysql> select * from employee order by salary asce;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'asce' at line 1
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

mysql> select * from employee order by salary desc limit 3;
+------------+-------+----------+
| EmployeeID | Name  | Salary   |
+------------+-------+----------+
| 5          | Riya  | 40000.00 |
| 4          | Atul  | 35000.00 |
| 3          | Soham | 30000.00 |
+------------+-------+----------+
3 rows in set (0.00 sec)

mysql> select * from employee order by salary limit 3;
+------------+-------+----------+
| EmployeeID | Name  | Salary   |
+------------+-------+----------+
| 1          | Rohan | 20000.00 |
| 2          | Mohan | 25000.00 |
| 3          | Soham | 30000.00 |
+------------+-------+----------+
3 rows in set (0.00 sec)

mysql> select * from employee order by salary limit 3 offset 2;
+------------+-------+----------+
| EmployeeID | Name  | Salary   |
+------------+-------+----------+
| 3          | Soham | 30000.00 |
| 4          | Atul  | 35000.00 |
| 5          | Riya  | 40000.00 |
+------------+-------+----------+
3 rows in set (0.00 sec)

mysql> select * from customer;
+-------------+-------------+-----------+-----------------------+------------+--------------+----------+
| customer_id | name        | city      | email                 | phone_no   | address      | pin_code |
+-------------+-------------+-----------+-----------------------+------------+--------------+----------+
| C101        | Rohan       | Thane     | rohan123@gmail.com    | 9393939393 | Thane        |   400611 |
| C102        | Mohan       | Thane     | mohan123@gmail.com    | 9393939394 | Thane        |   400612 |
| C103        | Amit Sharma | Mumbai    | amit.sharma@gmail.com | 9876543210 | Andheri West |   400058 |
| C104        | Priya Patel | Ahmedabad | priya.patel@gmail.com | 9876543211 | Navrangpura  |   380009 |
| C105        | Rahul Verma | Delhi     | rahul.verma@gmail.com | 9876543212 | Karol Bagh   |   110005 |
+-------------+-------------+-----------+-----------------------+------------+--------------+----------+
5 rows in set (0.00 sec)

mysql> select distinct city from customer;
+-----------+
| city      |
+-----------+
| Thane     |
| Mumbai    |
| Ahmedabad |
| Delhi     |
+-----------+
4 rows in set (0.01 sec)

mysql> select city from customer;
+-----------+
| city      |
+-----------+
| Thane     |
| Thane     |
| Mumbai    |
| Ahmedabad |
| Delhi     |
+-----------+
5 rows in set (0.00 sec)


mysql> select * from employee where EmployeeId between 2 and 4;
+------------+-------+----------+
| EmployeeID | Name  | Salary   |
+------------+-------+----------+
| 2          | Mohan | 25000.00 |
| 3          | Soham | 30000.00 |
| 4          | Atul  | 35000.00 |
+------------+-------+----------+
3 rows in set (0.00 sec)


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

mysql> select * from order_details where order_date between '2026-06-02' and '2026-06-03';
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode | order_date          | order_status |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
|      102 | C102        | P102       |        1 |         750 | Credit Card  | 2026-06-02 14:30:00 | Delivered    |
+----------+-------------+------------+----------+-------------+--------------+---------------------+--------------+
1 row in set (0.00 sec)

mysql> select * from order_details where order_date not between '2026-06-02' and '2026-06-03';
+----------+-------------+------------+----------+-------------+------------------+---------------------+--------------+
| order_id | customer_id | product_id | quantity | total_price | payment_mode     | order_date          | order_status |
+----------+-------------+------------+----------+-------------+------------------+---------------------+--------------+
|      101 | C101        | P101       |        2 |        1300 | UPI              | 2026-06-01 10:15:00 | Delivered    |
|      103 | C103        | P103       |        1 |        3999 | Net Banking      | 2026-06-03 09:45:00 | Shipped      |
|      104 | C104        | P104       |        3 |        2997 | Cash on Delivery | 2026-06-04 16:20:00 | Processing   |
|      105 | C105        | P105       |        2 |        2998 | UPI              | 2026-06-05 11:10:00 | Delivered    |
+----------+-------------+------------+----------+-------------+------------------+---------------------+--------------+
4 rows in set (0.00 sec)

mysql> select * from employee where EmployeeId in (1,3,5);
+------------+-------+----------+
| EmployeeID | Name  | Salary   |
+------------+-------+----------+
| 1          | Rohan | 20000.00 |
| 3          | Soham | 30000.00 |
| 5          | Riya  | 40000.00 |
+------------+-------+----------+
3 rows in set (0.00 sec)

mysql> select * from employee where EmployeeId not in (1,3,5);
+------------+-------+----------+
| EmployeeID | Name  | Salary   |
+------------+-------+----------+
| 2          | Mohan | 25000.00 |
| 4          | Atul  | 35000.00 |
+------------+-------+----------+
2 rows in set (0.00 sec)


mysql> show databases;
+-------------------------+
| Database                |
+-------------------------+
| e_commerce              |
| information_schema      |
| mysql                   |
| performance_schema      |
| practice_sql            |
| sakila                  |
| startersql              |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
10 rows in set (0.01 sec)


mysql> select * from employee where EmployeeId is not null;
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

mysql> select * from employee where EmployeeId is null;
Empty set (0.00 sec)

mysql> select * from customer where city = 'thane' and city='lodha'
    -> ;
Empty set (0.00 sec)

mysql> select * from customer where city = 'thane' or city='lodha';
+-------------+-------+-------+--------------------+------------+---------+----------+
| customer_id | name  | city  | email              | phone_no   | address | pin_code |
+-------------+-------+-------+--------------------+------------+---------+----------+
| C101        | Rohan | Thane | rohan123@gmail.com | 9393939393 | Thane   |   400611 |
| C102        | Mohan | Thane | mohan123@gmail.com | 9393939394 | Thane   |   400612 |
+-------------+-------+-------+--------------------+------------+---------+----------+
2 rows in set (0.00 sec)
