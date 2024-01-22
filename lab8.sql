/*retrive informatiion aboout each student's ID , first name, last name, and their enrollment details , including the enrollment ID and the associated course ID*/ 

select s.StudentId , s.FirstName, s.Lastname, e.EnrollmentID,e.EnrollmentDate,e.InstructorID, e.CourseID
    -> from student s join enrollment e
    -> on s.StudentId=e.StudentID;

/*o.p*/
+-----------+-----------+----------+--------------+----------------+--------------+----------+
| StudentId | FirstName | Lastname | EnrollmentID | EnrollmentDate | InstructorID | CourseID |
+-----------+-----------+----------+--------------+----------------+--------------+----------+
| S101      | Sam       | Wood     | E01          | 2024-01-02     | I11          | C01      |
| S102      | Gausia    | Ahmed    | E02          | 2024-01-02     | I12          | C02      |
| S103      | Rahul     | Singh    | E03          | 2024-01-02     | I13          | C03      |
| S104      | Aleena    | Naurain  | E04          | 2024-01-02     | I14          | C04      |
| S105      | Farida    | Rafique  | E05          | 2024-01-02     | I15          | C05      |
+-----------+-----------+----------+--------------+----------------+--------------+----------+
5 rows in set (0.00 sec)

/*chatgpt exercise*/

SELECT
    ->     s.studentid,
    ->     s.Firstname,
    ->     s.Lastname,
    ->     c.courseid,
    -> c.courseTitle
    -> FROM
    ->     student s
    -> INNER JOIN
    ->     enrollment e ON s.studentid = e.studentid
    -> INNER JOIN
    ->     course c ON e.courseid = c.courseid;

/*o.p*/
+-----------+-----------+----------+----------+-------------+
| studentid | Firstname | Lastname | courseid | courseTitle |
+-----------+-----------+----------+----------+-------------+
| S101      | Sam       | Wood     | C01      | Python      |
| S102      | Gausia    | Ahmed    | C02      | Python      |
| S103      | Rahul     | Singh    | C03      | Java        |
| S104      | Aleena    | Naurain  | C04      | MYSQL       |
| S105      | Farida    | Rafique  | C05      | Java        |
+-----------+-----------+----------+----------+-------------+
5 rows in set (0.00 sec)



