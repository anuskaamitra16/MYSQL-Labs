/*create a database StudentManagementSystem*/
create database StudentManagementSystem;

/*show the database*/
show databases;
O/P:
+-------------------------+
| Database               |
+-------------------------+
| ecommerce            |
| information_schema|
| mysql                   |
| performance_schema|
| sakila                  |
| studentmanagementsystem |
| sys                     |
| world                   |
+-------------------------+

/*use the database*/
 use StudentManagementSystem;
Database changed

/*create  table Student*/
 create table Student(
     StudentId varchar (10) PRIMARY KEY,
     FirstName varchar (50) NOT NULL,
     Lastname varchar (50) NOT NULL,
     DateOfBirth date ,
     Gender char,
     Email varchar (100),
     Phone int (10)
     );
Query OK

/*show the table*/
 DESC Student;
O/P:
+-------------+--------------+------+-----+---------+-------+
| Field       | Type         | Null | Key | Default | Extra |
+-------------+--------------+------+-----+---------+-------+
| StudentId   | varchar(10)   | NO   | PRI | NULL |       |
| FirstName   | varchar(50)  | NO   |      | NULL    |       |
| Lastname    | varchar(50) | NO   |      | NULL     |       |
| DateOfBirth | date             | YES  |     | NULL    |       |
| Gender      | char(1)          | YES  |     | NULL    |       |
| Email         | varchar(100) | YES  |     | NULL    |       |
| Phone       | int                  | YES  |     | NULL    |       |
+-------------+--------------+------+-----+---------+-------+

/*create table Course*/
 create table Course(
     CourseID varchar (10) PRIMARY KEY,
    CourseTitle  varchar (20),
    Credits int
     );
Query OK

/*show the table*/
 DESC  Course;
O/P:
+-------------+-------------+------+-----+---------+-------+
| Field       | Type        | Null | Key | Default | Extra |
+-------------+-------------+------+-----+---------+-------+
| CourseID    | varchar(10) | NO   | PRI | NULL    |       |
| CourseTitle | varchar(20) | YES  |       | NULL    |       |
| Credits        | int               | YES  |        | NULL    |       |
+-------------+-------------+------+-----+---------+-------+

/*create table Instructor*/
 create table Instructor(
    -> InstructorID varchar (10) PRIMARY KEY,
    -> Firstname varchar (50) NOT NULL,
    -> LastName varchar (50) NOT NULL,
    -> Email varchar (100)
    -> );
Query OK

/*show the table*/
 DESC Instructor;
O/P:
+--------------+--------------+------+-----+---------+-------+
| Field        | Type         | Null | Key | Default | Extra |
+--------------+--------------+------+-----+---------+-------+
| InstructorID | varchar(10)  | NO   | PRI | NULL    |       |
| Firstname    | varchar(50)  | NO   |       | NULL    |       |
| LastName     | varchar(50)  | NO   |      | NULL    |       |
| Email        | varchar(100) | YES  |         | NULL    |       |
+--------------+--------------+------+-----+---------+-------+

/*create table Enrollment*/
 create table Enrollment(
     EnrollmentID varchar (10) PRIMARY KEY,
     EnrollmentDate date,
     StudentID varchar (10),
     FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
     CourseID varchar (10),
     FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
     InstructorID varchar (10),
     FOREIGN KEY (InstructorID) REFERENCES Instructor(InstructorID)
    );
Query OK

/*show the table*/
mysql> DESC Enrollment;
O/P:
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| EnrollmentID   | varchar(10) | NO   | PRI | NULL    |       |
| EnrollmentDate | date        | YES  |          | NULL    |       |
| StudentID      | varchar(10) | YES  | MUL | NULL    |       |
| CourseID       | varchar(10) | YES  | MUL | NULL    |       |
| InstructorID   | varchar(10) | YES  | MUL | NULL    |       |
+----------------+-------------+------+-----+---------+-------+

/*create table Score*/
 create table Score(
    -> ScoreID varchar (10) PRIMARY KEY,
    -> CourseID varchar (10),
    -> FOREIGN KEY (CourseID) REFERENCES Course(CourseID),
    -> StudentID varchar (10),
    -> FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    -> DateOfExam date,
    -> CreditObtained int
    -> );
Query OK

/*show the table*/
mysql> DESC Score;
O/P:
+----------------+-------------+------+-----+---------+-------+
| Field          | Type        | Null | Key | Default | Extra |
+----------------+-------------+------+-----+---------+-------+
| ScoreID        | varchar(10) | NO   | PRI | NULL    |       |
| CourseID       | varchar(10) | YES  | MUL | NULL    |       |
| StudentID      | varchar(10) | YES  | MUL | NULL    |       |
| DateOfExam     | date        | YES  |           | NULL    |       |
| CreditObtained | int         | YES  |              | NULL    |       |
+----------------+-------------+------+-----+---------+-------+

/*create table Feedback*/
 create table Feedback(
    -> FeedbackID varchar (10) PRIMARY KEY,
    -> StudentID varchar (10),
    -> FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    -> Date date,
    -> InstructorName varchar (50),
    -> Feedback varchar(100)
    -> );
Query OK

/*show the table*/
DESC Feedback;
O/P:
+----------------+--------------+------+-----+---------+-------+
| Field          | Type         | Null      | Key| Default | Extra |
+----------------+--------------+------+-----+---------+-------+
| FeedbackID| varchar(10) | NO   | PRI   | NULL    |       |
| StudentID   | varchar(10) | YES  | MUL | NULL    |       |
| Date           | date             | YES  |         | NULL    |       |
| InstructorName | varchar(50)  | YES  |     | NULL |       |
| Feedback       | varchar(100) | YES  |     | NULL    |       |
+----------------+--------------+------+-----+---------+-------+





