/*ASSIGNMENT 1*/
/*task 1*/
/*to retrieve information whose date of birth is after june 16 2001*/

/*original table*/
select*from student;
+-----------+-----------+----------+-------------+--------+--------------------+------------+
| StudentId | FirstName | Lastname | DateOfBirth | Gender | Email              | Phone      |
+-----------+-----------+----------+-------------+--------+--------------------+------------+
| S101      | Sam       | Wood     | 2002-08-12  | M      | sam53@gmail.com    | 9123450986 |
| S102      | Gausia    | Ahmed    | 2003-12-22  | F      | gausia@gmail.com   | 9876435213 |
| S103      | Rahul     | Singh    | 2001-09-06  | M      | rahul@gmail.com    | 9876405815 |
| S104      | Aleena    | Naurain  | 1991-07-22  | F      | aleena@gmail.com   | 8870408816 |
| S105      | Farida    | Rafique  | 2003-05-30  | F      | farida@gmail.com   | 7870409248 |
| S106      | Shagufta  | Aziz     | 2001-08-12  | F      | shagufta@gmail.com | 8765493267 |
+-----------+-----------+----------+-------------+--------+--------------------+------------+
6 rows in set (0.65 sec)

/*task query*/
select *from student where dateofbirth> '2001-06-16';
/*o.p*/
+-----------+-----------+----------+-------------+--------+--------------------+------------+
| StudentId | FirstName | Lastname | DateOfBirth | Gender | Email              | Phone      |
+-----------+-----------+----------+-------------+--------+--------------------+------------+
| S101      | Sam       | Wood     | 2002-08-12  | M      | sam53@gmail.com    | 9123450986 |
| S102      | Gausia    | Ahmed    | 2003-12-22  | F      | gausia@gmail.com   | 9876435213 |
| S103      | Rahul     | Singh    | 2001-09-06  | M      | rahul@gmail.com    | 9876405815 |
| S105      | Farida    | Rafique  | 2003-05-30  | F      | farida@gmail.com   | 7870409248 |
| S106      | Shagufta  | Aziz     | 2001-08-12  | F      | shagufta@gmail.com | 8765493267 |
+-----------+-----------+----------+-------------+--------+--------------------+------------+
5 rows in set (0.04 sec)

/*task 2*/
/*retrive first name and email whose first name starts with either A or J*/

select firstname, email from student where firstname like 'A%' or firstname like 'J%';
/*o.p*/
+-----------+------------------+
| firstname | email            |
+-----------+------------------+
| Aleena    | aleena@gmail.com |
+-----------+------------------+
1 row in set (0.05 sec)

/*task 3*/
/*retrieve information about students whose first name iis not 'Alice' and whose email address contain the domain '@yahoo.com'*/

/*inserting a new record*/
insert into student values
    -> ('S107' ,'Alice ', 'Bond','2002-09-08','F','alice@yahoo.com',7689432567);
/*o.p*/
Query OK, 1 row affected (0.25 sec)

mysql> select *from student;
+-----------+-----------+----------+-------------+--------+--------------------+------------+
| StudentId | FirstName | Lastname | DateOfBirth | Gender | Email              | Phone      |
+-----------+-----------+----------+-------------+--------+--------------------+------------+
| S101      | Sam       | Wood     | 2002-08-12  | M      | sam53@gmail.com    | 9123450986 |
| S102      | Gausia    | Ahmed    | 2003-12-22  | F      | gausia@gmail.com   | 9876435213 |
| S103      | Rahul     | Singh    | 2001-09-06  | M      | rahul@gmail.com    | 9876405815 |
| S104      | Aleena    | Naurain  | 1991-07-22  | F      | aleena@gmail.com   | 8870408816 |
| S105      | Farida    | Rafique  | 2003-05-30  | F      | farida@gmail.com   | 7870409248 |
| S106      | Shagufta  | Aziz     | 2001-08-12  | F      | shagufta@gmail.com | 8765493267 |
| S107      | Alice     | Bond     | 2002-09-08  | F      | alice@yahoo.com    | 7689432567 |
+-----------+-----------+----------+-------------+--------+--------------------+------------+
7 rows in set (0.00 sec)


/*task query*/

SELECT studentID, firstname, email
    -> FROM student
    -> WHERE firstname != 'Alice' AND email LIKE '%@yahooo.com';
Empty set (0.00 sec)

/*ASSIGNMENT 2*/
create database employee_details;
Query OK, 1 row affected (0.31 sec)

use employee_details;
Database changed

/*create Person table and inserting values into it*/
CREATE TABLE person (
    ->     PersonId INT PRIMARY KEY,
    ->     Firstname VARCHAR(50),
    ->     Lastname VARCHAR(50),
    ->     Age INT
    -> );
Query OK, 0 rows affected (1.10 sec)

mysql> INSERT INTO person
    -> VALUES
    ->     (4, 'Alice', 'Williams', 28),
    ->     (5, 'David', 'Miller', 40),
    ->     (6, 'Sophia', 'Brown', 22),
    ->     (7, 'Michael', 'Jones', 33),
    ->     (8, 'Olivia', 'Davis', 29);
Query OK, 5 rows affected (0.09 sec)
Records: 5  Duplicates: 0  Warnings: 0

/*display*/
select * from person;
+----------+-----------+----------+------+
| PersonId | Firstname | Lastname | Age  |
+----------+-----------+----------+------+
|        4 | Alice     | Williams |   28 |
|        5 | David     | Miller   |   40 |
|        6 | Sophia    | Brown    |   22 |
|        7 | Michael   | Jones    |   33 |
|        8 | Olivia    | Davis    |   29 |
+----------+-----------+----------+------+
5 rows in set (0.01 sec)


/*create Employee table and inserting values into it*/
mysql> CREATE TABLE employee (
    ->     emp_id INT PRIMARY KEY,
    ->     first_name VARCHAR(50),
    ->     last_name VARCHAR(50),
    ->     age INT
    -> );
Query OK, 0 rows affected (0.67 sec)

mysql> INSERT INTO employee
    -> VALUES
    ->     (1, 'John', 'Doe', 30),
    ->     (2, 'Jane', 'Smith', 25),
    ->     (3, 'Robert', 'Johnson', 35),
    ->     (4, 'Alice', 'Williams', 28),
    ->     (5, 'David', 'Miller', 40);
Query OK, 5 rows affected (0.14 sec)
Records: 5  Duplicates: 0  Warnings: 0

/*display*/
select * from employee;
+--------+------------+-----------+------+
| emp_id | first_name | last_name | age  |
+--------+------------+-----------+------+
|      1 | John       | Doe       |   30 |
|      2 | Jane       | Smith     |   25 |
|      3 | Robert     | Johnson   |   35 |
|      4 | Alice      | Williams  |   28 |
|      5 | David      | Miller    |   40 |
+--------+------------+-----------+------+
5 rows in set (0.00 sec)


/*union between person and employee*/
SELECT PersonId AS id, Firstname, Lastname, Age
    -> FROM person
    -> UNION
    -> SELECT emp_id AS id, first_name, last_name, age
    -> FROM employee;
/*o.p*/
+----+-----------+----------+------+
| id | Firstname | Lastname | Age  |
+----+-----------+----------+------+
|  4 | Alice     | Williams |   28 |
|  5 | David     | Miller   |   40 |
|  6 | Sophia    | Brown    |   22 |
|  7 | Michael   | Jones    |   33 |
|  8 | Olivia    | Davis    |   29 |
|  1 | John      | Doe      |   30 |
|  2 | Jane      | Smith    |   25 |
|  3 | Robert    | Johnson  |   35 |
+----+-----------+----------+------+
8 rows in set (0.03 sec)
  