
/*creating database Bankaccount*/
create database BankAccount;
Query OK, 1 row affected (0.70 sec)

show databases;
+-------------------------+
| Database                |
+-------------------------+
| bankaccount             |
| ecommerce               |
| employeemanagement      |
| information_schema      |
| mysql                   |
| performance_schema      |
| sakila                  |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+
10 rows in set (0.30 sec)

use bankaccount;
Database changed

/*Create table */
create table BankAccount(
    -> account_id varchar (20) primary key,
    -> account_holder_name varchar (50) not null,
    -> account_balance bigint not null);
Query OK, 0 rows affected (5.63 sec)

desc bankaccount;
+---------------------+-------------+------+-----+---------+-------+
| Field               | Type        | Null | Key | Default | Extra |
+---------------------+-------------+------+-----+---------+-------+
| account_id          | varchar(20) | NO   | PRI | NULL    |       |
| account_holder_name | varchar(50) | NO   |     | NULL    |       |
| account_balance     | bigint      | NO   |     | NULL    |       |
+---------------------+-------------+------+-----+---------+-------+
3 rows in set (2.28 sec)

/*task 1*/
/*insert values into table*/
insert into bankaccount values
    -> (1, 'John Doe', 1000.00),
    -> (2, 'Jane Smith', 2500.50),
    -> (3, 'Alice Johnson', 500.75),
    -> (4, 'Bob Williams', 3000.25),
    -> (5, 'Eva Davis', 1500.90);
    -> (6, 'Michael Johnson', 75000.75),
    -> (7, 'Emily Davis', 60000.50),
    -> (8, 'Daniel Smith', 85000.00);
/*o.p*/
Query OK, 3 rows affected (0.40 sec)
Records: 3  Duplicates: 0  Warnings: 0

select *from bankaccount;
/*o.p*/
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| 1          | John Doe            |            1000 |
| 2          | Jane Smith          |            2501 |
| 3          | Alice Johnson       |             501 |
| 4          | Bob Williams        |            3000 |
| 5          | Eva Davis           |            1501 |
| 6          | Michael Johnson     |           75001 |
| 7          | Emily Davis         |           60001 |
| 8          | Daniel Smith        |           85000 |
+------------+---------------------+-----------------+
8 rows in set (0.00 sec)
/*task 2*/
/*retrieving data*/
select account_holder_name, account_balance from BankAccount;
/*o.p*/
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| John Doe            |            1000 |
| Jane Smith          |            2501 |
| Alice Johnson       |             501 |
| Bob Williams        |            3000 |
| Eva Davis           |            1501 |
| Michael Johnson     |           75001 |
| Emily Davis         |           60001 |
| Daniel Smith        |           85000 |
+---------------------+-----------------+
8 rows in set (0.00 sec)

/*task 3*/
/*filtering data*/
select account_holder_name, account_balance from BankAccount where account_balance > 30000;
/*o.p*/
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Michael Johnson     |           75001 |
| Emily Davis         |           60001 |
| Daniel Smith        |           85000 |
+---------------------+-----------------+
3 rows in set (0.02 sec)
/*task 4*/
/*updating data*/
update bankaccount set account_balance=25000 where account_id=1;
/*o.p*/
Query OK, 1 row affected (0.24 sec)
Rows matched: 1  Changed: 1  Warnings: 0

/*display*/
select*from bankaccount;
/*o.p*/
+------------+---------------------+-----------------+
| account_id | account_holder_name | account_balance |
+------------+---------------------+-----------------+
| 1          | John Doe            |           25000 |
| 2          | Jane Smith          |            2501 |
| 3          | Alice Johnson       |             501 |
| 4          | Bob Williams        |            3000 |
| 5          | Eva Davis           |            1501 |
| 6          | Michael Johnson     |           75001 |
| 7          | Emily Davis         |           60001 |
| 8          | Daniel Smith        |           85000 |
+------------+---------------------+-----------------+
8 rows in set (0.00 sec)

