/*Task 1*/
/*updation in student table*/
select * from student;
/*O.P*/
+-----------+-----------+----------+-------------+--------+------------------+------------+
| StudentId | FirstName | Lastname | DateOfBirth | Gender | Email            | Phone      |
+-----------+-----------+----------+-------------+--------+------------------+------------+
| S101      | Sam       | Wood     | 2002-08-12  | M      | sam@gmail.com    | 9123450986 |
| S102      | Gausia    | Ahmed    | 2003-12-22  | F      | gausia@gmail.com | 9876435213 |
| S103      | Rahul     | Singh    | 2001-09-06  | M      | rahul@gmail.com  | 9876405815 |
| S104      | Aleena    | Naurain  | 1991-07-22  | F      | aleena@gmail.com | 8870408816 |
| S105      | Farida    | Rafique  | 2003-05-30  | F      | farida@gmail.com | 7870409248 |
+-----------+-----------+----------+-------------+--------+------------------+------------+
5 rows in set (0.18 sec)

/*update email*/
update Student set Email='sam53@gmail.com' where FirstName='Sam' and Lastname='Wood';
/*O.P*/
Query OK, 1 row affected (0.09 sec)
Rows matched: 1  Changed: 1  Warnings: 0

/*display result*/
 select*from Student;
/*O.P*/
+-----------+-----------+----------+-------------+--------+------------------+------------+
| StudentId | FirstName | Lastname | DateOfBirth | Gender | Email            | Phone      |
+-----------+-----------+----------+-------------+--------+------------------+------------+
| S101      | Sam       | Wood     | 2002-08-12  | M      | sam53@gmail.com  | 9123450986 |
| S102      | Gausia    | Ahmed    | 2003-12-22  | F      | gausia@gmail.com | 9876435213 |
| S103      | Rahul     | Singh    | 2001-09-06  | M      | rahul@gmail.com  | 9876405815 |
| S104      | Aleena    | Naurain  | 1991-07-22  | F      | aleena@gmail.com | 8870408816 |
| S105      | Farida    | Rafique  | 2003-05-30  | F      | farida@gmail.com | 7870409248 |
+-----------+-----------+----------+-------------+--------+------------------+------------+
5 rows in set (0.00 sec)

/*updation in Instructor table*/
select * from instructor;
/*O.P*/
+--------------+-----------+----------+-------------------+
| InstructorID | Firstname | LastName | Email             |
+--------------+-----------+----------+-------------------+
| I11          | Anup      | Singh    | anup@gmail.com    |
| I12          | Shawin    | Pradhan  | shawin@gmail.com  |
| I13          | Raj       | Dutta    | raj@gmail.com     |
| I14          | Farheen   | Sheikh   | farheen@gmail.com |
| I15          | Haniya    | Zubair   | haniya@gmail.com  |
+--------------+-----------+----------+-------------------+
5 rows in set (0.07 sec)

/*update email*/
update instructor set Email='shawinpradhan@gmail.com' where FirstName='Shawin' and Lastname='Pradhan';
/*O.P*/
Query OK, 1 row affected (0.10 sec)
Rows matched: 1  Changed: 1  Warnings: 0

/*display result*/
 select*from Instructor;
/*O.P*/
+--------------+-----------+----------+-------------------------+
| InstructorID | Firstname | LastName | Email                   |
+--------------+-----------+----------+-------------------------+
| I11          | Anup      | Singh    | anup@gmail.com          |
| I12          | Shawin    | Pradhan  | shawinpradhan@gmail.com |
| I13          | Raj       | Dutta    | raj@gmail.com           |
| I14          | Farheen   | Sheikh   | farheen@gmail.com       |
| I15          | Haniya    | Zubair   | haniya@gmail.com        |
+--------------+-----------+----------+-------------------------+
5 rows in set (0.00 sec)

/*Task 2*/
/*insert of new record*/
insert into Student values(
 'S234','Anu','Mitra','2003-05-30','F','anu@gmail.com',9876542314);
/*O.P*/
Query OK, 1 row affected (0.13 sec)

/*display*/
 select * from student;
+-----------+-----------+----------+-------------+--------+------------------+------------+
| StudentId | FirstName | Lastname | DateOfBirth | Gender | Email            | Phone      |
+-----------+-----------+----------+-------------+--------+------------------+------------+
| S101      | Sam       | Wood     | 2002-08-12  | M      | sam53@gmail.com  | 9123450986 |
| S102      | Gausia    | Ahmed    | 2003-12-22  | F      | gausia@gmail.com | 9876435213 |
| S103      | Rahul     | Singh    | 2001-09-06  | M      | rahul@gmail.com  | 9876405815 |
| S104      | Aleena    | Naurain  | 1991-07-22  | F      | aleena@gmail.com | 8870408816 |
| S105      | Farida    | Rafique  | 2003-05-30  | F      | farida@gmail.com | 7870409248 |
| S234      | Anu       | Mitra    | 2003-05-30  | F      | anu@gmail.com    | 9876542314 |
+-----------+-----------+----------+-------------+--------+------------------+------------+
6 rows in set (0.00 sec)

*/deletion of new record*/
delete from Student where Lastname='Mitra';
/*O.P*/
Query OK, 1 row affected (0.23 sec)

/*display*/
 select *from student;
/*O.P*/
+-----------+-----------+----------+-------------+--------+------------------+------------+
| StudentId | FirstName | Lastname | DateOfBirth | Gender | Email            | Phone      |
+-----------+-----------+----------+-------------+--------+------------------+------------+
| S101      | Sam       | Wood     | 2002-08-12  | M      | sam53@gmail.com  | 9123450986 |
| S102      | Gausia    | Ahmed    | 2003-12-22  | F      | gausia@gmail.com | 9876435213 |
| S103      | Rahul     | Singh    | 2001-09-06  | M      | rahul@gmail.com  | 9876405815 |
| S104      | Aleena    | Naurain  | 1991-07-22  | F      | aleena@gmail.com | 8870408816 |
| S105      | Farida    | Rafique  | 2003-05-30  | F      | farida@gmail.com | 7870409248 |
+-----------+-----------+----------+-------------+--------+------------------+------------+
5 rows in set (0.00 sec)

/*Task 3*/
/*listing student name start with G*/

select *from student where FirstName like  'G%';
/*O.P*/
+-----------+-----------+----------+-------------+--------+------------------+------------+
| StudentId | FirstName | Lastname | DateOfBirth | Gender | Email            | Phone      |
+-----------+-----------+----------+-------------+--------+------------------+------------+
| S102      | Gausia    | Ahmed    | 2003-12-22  | F      | gausia@gmail.com | 9876435213 |
+-----------+-----------+----------+-------------+--------+------------------+------------+
1 row in set (0.00 sec)

/*PART 2*/

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

