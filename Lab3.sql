mysql> create table students(stud_id varchar(10) not null,FirstName varchar(30),LastName varchar(30) not null,Age int not null,phoneno varchar(11) not null,Address varchar(40) not null);
Query OK, 0 rows affected (0.04 sec)

mysql> insert into students values(1,'Rohan','Jadhav',16,9894784894,'Thane'),(2,'Mohan','Singh',16,9876543211,'Airoli'),(3,'Riya','Bansal',16,8867452345,'Ghatkopar'),(4,'Suresh','Pal',16,6787564534,'Dadar'),(5,'Mukesh','koli',16,6874556787,'Diva');
Query OK, 5 rows affected (0.01 sec)
Records: 5  Duplicates: 0  Warnings: 0

mysql> select * from students;
+---------+-----------+----------+-----+------------+-----------+
| stud_id | FirstName | LastName | Age | phoneno    | Address   |
+---------+-----------+----------+-----+------------+-----------+
| 1       | Rohan     | Jadhav   |  16 | 9894784894 | Thane     |
| 2       | Mohan     | Singh    |  16 | 9876543211 | Airoli    |
| 3       | Riya      | Bansal   |  16 | 8867452345 | Ghatkopar |
| 4       | Suresh    | Pal      |  16 | 6787564534 | Dadar     |
| 5       | Mukesh    | koli     |  16 | 6874556787 | Diva      |
+---------+-----------+----------+-----+------------+-----------+
5 rows in set (0.00 sec)

mysql> select * from students order by LastName;
+---------+-----------+----------+-----+------------+-----------+
| stud_id | FirstName | LastName | Age | phoneno    | Address   |
+---------+-----------+----------+-----+------------+-----------+
| 3       | Riya      | Bansal   |  16 | 8867452345 | Ghatkopar |
| 1       | Rohan     | Jadhav   |  16 | 9894784894 | Thane     |
| 5       | Mukesh    | koli     |  16 | 6874556787 | Diva      |
| 4       | Suresh    | Pal      |  16 | 6787564534 | Dadar     |
| 2       | Mohan     | Singh    |  16 | 9876543211 | Airoli    |
+---------+-----------+----------+-----+------------+-----------+
5 rows in set (0.00 sec)

mysql> select * from students order by LastName asc;
+---------+-----------+----------+-----+------------+-----------+
| stud_id | FirstName | LastName | Age | phoneno    | Address   |
+---------+-----------+----------+-----+------------+-----------+
| 3       | Riya      | Bansal   |  16 | 8867452345 | Ghatkopar |
| 1       | Rohan     | Jadhav   |  16 | 9894784894 | Thane     |
| 5       | Mukesh    | koli     |  16 | 6874556787 | Diva      |
| 4       | Suresh    | Pal      |  16 | 6787564534 | Dadar     |
| 2       | Mohan     | Singh    |  16 | 9876543211 | Airoli    |
+---------+-----------+----------+-----+------------+-----------+
5 rows in set (0.00 sec)
