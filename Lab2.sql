-- Lab 1: Database Schema: Consider a simple database with one tables: BankAccount 

--  Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance

--  Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table

-- . Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 

-- Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.

--  Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101. 


mysql> create database account;
Query OK, 1 row affected (0.02 sec)

mysql> use account;
Database changed
mysql> create table BankAccount(account_id varchar(15) primary key not null,account_holder_name varchar(50) not null,account_balance double not null);
Query OK, 0 rows affected (0.05 sec)


mysql> insert into BankAccount (account_id, account_holder_name,account_balance)values(101,'Rohan',10000),(102,'Mohan',20000),(103,'Riya',30000),(104,'Dinesh',40000),(105,'Luv',50000);
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select account_holder_name,account_balance from BankAccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Rohan               |           10000 |
| Mohan               |           20000 |
| Riya                |           30000 |
| Dinesh              |           40000 |
| Luv                 |           50000 |
+---------------------+-----------------+
5 rows in set (0.00 sec)

mysql> select account_holder_name,account_balance from BankAccount where account_balance > 30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Dinesh              |           40000 |
| Luv                 |           50000 |
+---------------------+-----------------+
2 rows in set (0.00 sec)

mysql> update BankAccount set account_balance = 60000 where account_id = 101;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select account_holder_name,account_balance from BankAccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Rohan               |           60000 |
| Mohan               |           20000 |
| Riya                |           30000 |
| Dinesh              |           40000 |
| Luv                 |           50000 |
+---------------------+-----------------+
5 rows in set (0.00 sec)

mysql> select * from BankAccount;
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| 101        | Rohan               |           60000 |
| 102        | Mohan               |           20000 |
| 103        | Riya                |           30000 |
| 104        | Dinesh              |           40000 |
| 105        | Luv                 |           50000 |
+------------+---------------------+-----------------+
5 rows in set (0.00 sec)
