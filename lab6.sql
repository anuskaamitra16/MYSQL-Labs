/*retrieve data where category = Electronics or price < 70000*/

select * from product;
+------------+---------------+-------------+--------------+----------------+---------------+-------+-----------------+
| product_id | product_name  | category    | sub_category | original_price | selling_price | stock | total_price_gst |
+------------+---------------+-------------+--------------+----------------+---------------+-------+-----------------+
| 1          | HP-101        | Electronics | Laptop       |          50000 |         40500 |    50 |           51840 |
| 2          | Apple Macbook | Electronics | Laptop       |          70000 |         58500 |    20 |           74880 |
| 3          | Dell          | Electronics | Laptop       |          50000 |         43200 |    20 |           55296 |
| 4          | Asus          | Electronics | Laptop       |          40000 |         34200 |    30 |           43776 |
| 5          | BMW           | Auto Mobile | Car          |       10000000 |      15000000 |     2 |        16000000 |
+------------+---------------+-------------+--------------+----------------+---------------+-------+-----------------+
5 rows in set (0.00 sec)

select * from product where category='Electronics' or total_price_gst<70000;
+------------+---------------+-------------+--------------+----------------+---------------+-------+-----------------+
| product_id | product_name  | category    | sub_category | original_price | selling_price | stock | total_price_gst |
+------------+---------------+-------------+--------------+----------------+---------------+-------+-----------------+
| 1          | HP-101        | Electronics | Laptop       |          50000 |         40500 |    50 |           51840 |
| 2          | Apple Macbook | Electronics | Laptop       |          70000 |         58500 |    20 |           74880 |
| 3          | Dell          | Electronics | Laptop       |          50000 |         43200 |    20 |           55296 |
| 4          | Asus          | Electronics | Laptop       |          40000 |         34200 |    30 |           43776 |
+------------+---------------+-------------+--------------+----------------+---------------+-------+-----------------+
4 rows in set (0.00 sec)

/*chatgpt exercise*/

/*Create Employee table*/
 CREATE TABLE Employee (
->     employee_id INT PRIMARY KEY,
->     employee_name VARCHAR(255),
->     department VARCHAR(50),
->     salary DECIMAL(10, 2)
-> );
Query OK, 0 rows affected (0.89 sec)

/*Insert sample values*/
mysql> INSERT INTO Employee (employee_id, employee_name, department, salary) VALUES
    ->     (1, 'John Doe', 'HR', 50000.00),
    ->     (2, 'Jane Smith', 'IT', 60000.00),
    ->     (3, 'Bob Johnson', 'HR', 55000.00),
    ->     (4, 'Alice Williams', 'IT', 65000.00),
    ->     (5, 'Charlie Brown', 'Finance', 70000.00),
    ->     (6, 'Diana Miller', 'Finance', 75000.00);
Query OK, 6 rows affected (0.33 sec)
Records: 6  Duplicates: 0  Warnings: 0

/*display*/
select * from employee;
+-------------+----------------+------------+----------+
| employee_id | employee_name  | department | salary   |
+-------------+----------------+------------+----------+
|           1 | John Doe       | HR         | 50000.00 |
|           2 | Jane Smith     | IT         | 60000.00 |
|           3 | Bob Johnson    | HR         | 55000.00 |
|           4 | Alice Williams | IT         | 65000.00 |
|           5 | Charlie Brown  | Finance    | 70000.00 |
|           6 | Diana Miller   | Finance    | 75000.00 |
+-------------+----------------+------------+----------+
6 rows in set (0.00 sec)

/*Find average salary for each department*/
SELECT
-> department,
-> AVG(salary) AS average_salary
-> FROM
-> Employee
-> GROUP BY
-> department;
/*o.p*/
+------------+----------------+
| department | average_salary |
+------------+----------------+
| HR         |   52500.000000 |
| IT         |   62500.000000 |
| Finance    |   72500.000000 |
+------------+----------------+
3 rows in set (0.06 sec)



