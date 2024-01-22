/*task1*/
/*fetch studentID and EnrollmentID using right outer join*/
select * from student;
/*o.p*/
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
6 rows in set (0.00 sec)

 select s.StudentId, e.EnrollmentID
 -> from student s right join Enrollment e
 -> on s.studentID = e.StudentID;

/*o.p*/
+-----------+--------------+
| StudentId | EnrollmentID |
+-----------+--------------+
| S101      | E01          |
| S102      | E02          |
| S103      | E03          |
| S104      | E04          |
| S105      | E05          |
+-----------+--------------+
5 rows in set (0.00 sec)

/*task 2*/
/*retrieve the data using left join query*/
select s.studentID,s.FirstName, s.email,e.enrollmentID , c.courseID, c.CourseTitle
    -> from Student s left join Enrollment e
    -> on s.studentId=e.studentid
    -> left join Course c
    -> on e.courseid =c.courseid;

/*o.p*/
+-----------+-----------+--------------------+--------------+----------+-------------+
| studentID | FirstName | email              | enrollmentID | courseID | CourseTitle |
+-----------+-----------+--------------------+--------------+----------+-------------+
| S101      | Sam       | sam53@gmail.com    | E01          | C01      | Python      |
| S102      | Gausia    | gausia@gmail.com   | E02          | C02      | Python      |
| S103      | Rahul     | rahul@gmail.com    | E03          | C03      | Java        |
| S104      | Aleena    | aleena@gmail.com   | E04          | C04      | MYSQL       |
| S105      | Farida    | farida@gmail.com   | E05          | C05      | Java        |
| S106      | Shagufta  | shagufta@gmail.com | NULL         | NULL     | NULL        |
+-----------+-----------+--------------------+--------------+----------+-------------+
6 rows in set (0.00 sec)
