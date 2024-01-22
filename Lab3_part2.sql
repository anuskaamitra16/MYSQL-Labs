/*create database */
create database employeemanagement;
Query OK, 1 row affected (0.22 sec)

use employeemanagement;
Database changed

/*create table employee*/
create table Employee(
    -> emp_id varchar (10) primary key,
    -> first_name varchar (50) not null,
    -> last_name varchar (50) not null,
    -> age int ,
    -> email varchar (100) unique);
Query OK, 0 rows affected (2.60 sec)

/*display*/
desc Employee;
+------------+--------------+------+-----+---------+-------+
| Field      | Type         | Null | Key | Default | Extra |
+------------+--------------+------+-----+---------+-------+
| emp_id     | varchar(10)  | NO   | PRI | NULL    |       |
| first_name | varchar(50)  | NO   |     | NULL    |       |
| last_name  | varchar(50)  | NO   |     | NULL    |       |
| age        | int          | YES  |     | NULL    |       |
| email      | varchar(100) | YES  | UNI | NULL    |       |
+------------+--------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

/*task 1*/
/*inserting data*/
insert into employee values(
    -> 1, 'Alice', 'Smith', 28, 'alice.smith@example.com'),
    -> (2, 'Bob', 'Johnson', 35, 'bob.johnson@example.com'),
    -> (3, 'Charlie', 'Brown', 40, 'charlie.brown@example.com'),
    -> (4, 'Diana', 'Miller', 32, 'diana.miller@example.com'),
    -> (5, 'Ethan', 'Davis', 27, 'ethan.davis@example.com');
Query OK, 5 rows affected (0.87 sec)
Records: 5  Duplicates: 0  Warnings: 0

/*diaplay*/
select *from employee;
+--------+------------+-----------+------+---------------------------+
| emp_id | first_name | last_name | age  | email                     |
+--------+------------+-----------+------+---------------------------+
| 1      | Alice      | Smith     |   28 | alice.smith@example.com   |
| 2      | Bob        | Johnson   |   35 | bob.johnson@example.com   |
| 3      | Charlie    | Brown     |   40 | charlie.brown@example.com |
| 4      | Diana      | Miller    |   32 | diana.miller@example.com  |
| 5      | Ethan      | Davis     |   27 | ethan.davis@example.com   |
+--------+------------+-----------+------+---------------------------+
5 rows in set (0.00 sec)

/*task 2*/
/*retrieving data*/

select first_name , last_name from employee;
/*O.P*/
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Alice      | Smith     |
| Bob        | Johnson   |
| Charlie    | Brown     |
| Diana      | Miller    |
| Ethan      | Davis     |
+------------+-----------+
5 rows in set (0.00 sec)

/*task 3*/
/*filtering data*/

select first_name, last_name , age from Employee where age>30;
/*O.P*/
+------------+-----------+------+
| first_name | last_name | age  |
+------------+-----------+------+
| Bob        | Johnson   |   35 |
| Charlie    | Brown     |   40 |
| Diana      | Miller    |   32 |
+------------+-----------+------+
3 rows in set (0.03 sec)

/*task  4*/
/*updating data*/
update employee set age=age+1 where age>25;
/*O.P*/
Query OK, 5 rows affected (0.12 sec)
Rows matched: 5  Changed: 5  Warnings: 0

/*display*/
select *from employee;
+--------+------------+-----------+------+---------------------------+
| emp_id | first_name | last_name | age  | email                     |
+--------+------------+-----------+------+---------------------------+
| 1      | Alice      | Smith     |   29 | alice.smith@example.com   |
| 2      | Bob        | Johnson   |   36 | bob.johnson@example.com   |
| 3      | Charlie    | Brown     |   41 | charlie.brown@example.com |
| 4      | Diana      | Miller    |   33 | diana.miller@example.com  |
| 5      | Ethan      | Davis     |   28 | ethan.davis@example.com   |
+--------+------------+-----------+------+---------------------------+
5 rows in set (0.00 sec)

