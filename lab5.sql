/*Lab 1*/
/*retrieve information about students in ascending order based on their last names*/

select * from student order by Lastname ASC;

/*o.p*/
+-----------+-----------+----------+-------------+--------+------------------+------------+
| StudentId | FirstName | Lastname | DateOfBirth | Gender | Email            | Phone      |
+-----------+-----------+----------+-------------+--------+------------------+------------+
| S102      | Gausia    | Ahmed    | 2003-12-22  | F      | gausia@gmail.com | 9876435213 |
| S104      | Aleena    | Naurain  | 1991-07-22  | F      | aleena@gmail.com | 8870408816 |
| S105      | Farida    | Rafique  | 2003-05-30  | F      | farida@gmail.com | 7870409248 |
| S103      | Rahul     | Singh    | 2001-09-06  | M      | rahul@gmail.com  | 9876405815 |
| S101      | Sam       | Wood     | 2002-08-12  | M      | sam53@gmail.com  | 9123450986 |
+-----------+-----------+----------+-------------+--------+------------------+------------+
5 rows in set (0.01 sec)


/*Lab 2*/
/*count the number of students based on their gender*/

SELECT gender, COUNT(*) AS gender_count
    -> FROM student
    -> GROUP BY gender;
/*o.p*/
+--------+--------------+
| gender | gender_count |
+--------+--------------+
| M      |            2 |
| F      |            3 |
+--------+--------------+
2 rows in set (0.19 sec)

/*chatgpt exercise*/
/*create book table*/
insert into books values
    -> (1, 'The Catcher in the Rye', 1),
    -> (2, 'To Kill a Mockingbird', 2),
    -> (3, '1984', 3),
    -> (4, 'Pride and Prejudice', 4),
    -> (5, 'The Great Gatsby', 5);
Query OK, 5 rows affected (0.72 sec)
Records: 5  Duplicates: 0  Warnings: 0

/*display*/
select  * from books;
/*o.p*/
+---------+------------------------+-----------+
| book_id | title                  | author_id |
+---------+------------------------+-----------+
| 1       | The Catcher in the Rye | 1         |
| 2       | To Kill a Mockingbird  | 2         |
| 3       | 1984                   | 3         |
| 4       | Pride and Prejudice    | 4         |
| 5       | The Great Gatsby       | 5         |
+---------+------------------------+-----------+
5 rows in set (0.00 sec)

/*count the number of books written by each author, ordering the results by the author's name without using a join clause*/
SELECT
    ->     author_id,
    ->     COUNT(book_id) AS books_written,
    ->     MAX(title) AS latest_book_title
    -> FROM
    ->     books
    -> GROUP BY
    ->     author_id
    -> ORDER BY
    ->     MAX(title) ASC; 
/*o.p*/
+-----------+---------------+------------------------+
| author_id | books_written | latest_book_title      |
+-----------+---------------+------------------------+
| 3         |             1 | 1984                   |
| 4         |             1 | Pride and Prejudice    |
| 1         |             1 | The Catcher in the Rye |
| 5         |             1 | The Great Gatsby       |
| 2         |             1 | To Kill a Mockingbird  |
+-----------+---------------+------------------------+
5 rows in set (0.04 sec)



