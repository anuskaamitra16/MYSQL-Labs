
/*task 1*/

/*full outer join*/

use studentmanagementsystem;
Database changed

show tables;
+-----------------------------------+
| Tables_in_studentmanagementsystem |
+-----------------------------------+
| course                            |
| enrollment                        |
| feedback                          |
| instructor                        |
| person                            |
| score                             |
| student                           |
+-----------------------------------+
7 rows in set (0.53 sec)

select * from student;
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
7 rows in set (0.10 sec)

select * from enrollment;
+--------------+----------------+-----------+----------+--------------+
| EnrollmentID | EnrollmentDate | StudentID | CourseID | InstructorID |
+--------------+----------------+-----------+----------+--------------+
| E01          | 2024-01-02     | S101      | C01      | I11          |
| E02          | 2024-01-02     | S102      | C02      | I12          |
| E03          | 2024-01-02     | S103      | C03      | I13          |
| E04          | 2024-01-02     | S104      | C04      | I14          |
| E05          | 2024-01-02     | S105      | C05      | I15          |
+--------------+----------------+-----------+----------+--------------+
5 rows in set (2.96 sec)

/*full outer join query*/

 select s.StudentId, s.FirstName, S.Email, e.EnrollmentId, e.CourseID
    -> from student s Left join Enrollment e
    -> on s.StudentId= e.StudentId
    -> UNION ALL
    -> select s.StudentId, s.FirstName, S.Email, e.EnrollmentId, e.CourseID
    -> from student s Right join Enrollment e
    -> on s.StudentId= e.StudentId
    -> ;
/*o.p*/
+-----------+-----------+--------------------+--------------+----------+
| StudentId | FirstName | Email              | EnrollmentId | CourseID |
+-----------+-----------+--------------------+--------------+----------+
| S101      | Sam       | sam53@gmail.com    | E01          | C01      |
| S102      | Gausia    | gausia@gmail.com   | E02          | C02      |
| S103      | Rahul     | rahul@gmail.com    | E03          | C03      |
| S104      | Aleena    | aleena@gmail.com   | E04          | C04      |
| S105      | Farida    | farida@gmail.com   | E05          | C05      |
| S106      | Shagufta  | shagufta@gmail.com | NULL         | NULL     |
| S107      | Alice     | alice@yahoo.com    | NULL         | NULL     |
| S101      | Sam       | sam53@gmail.com    | E01          | C01      |
| S102      | Gausia    | gausia@gmail.com   | E02          | C02      |
| S103      | Rahul     | rahul@gmail.com    | E03          | C03      |
| S104      | Aleena    | aleena@gmail.com   | E04          | C04      |
| S105      | Farida    | farida@gmail.com   | E05          | C05      |
+-----------+-----------+--------------------+--------------+----------+
12 rows in set (0.10 sec)
/*task 2*/
/*natural join query*/

SELECT student.studentid, firstname, email, phone, enrollmentid, courseid
    -> FROM student
    -> NATURAL JOIN enrollment;
+-----------+-----------+------------------+------------+--------------+----------+
| studentid | firstname | email            | phone      | enrollmentid | courseid |
+-----------+-----------+------------------+------------+--------------+----------+
| S101      | Sam       | sam53@gmail.com  | 9123450986 | E01          | C01      |
| S102      | Gausia    | gausia@gmail.com | 9876435213 | E02          | C02      |
| S103      | Rahul     | rahul@gmail.com  | 9876405815 | E03          | C03      |
| S104      | Aleena    | aleena@gmail.com | 8870408816 | E04          | C04      |
| S105      | Farida    | farida@gmail.com | 7870409248 | E05          | C05      |
+-----------+-----------+------------------+------------+--------------+----------+
5 rows in set (0.01 sec)


