-- 1)create a table student with values (id,name, mobile_no,batch_name)
-- The output should be Student is from batch_name by using concatenation operation 
create database 23r;
use 23r;
CREATE TABLE student (
    id INT,
    name VARCHAR(100),
    mobile_no VARCHAR(15),
    batch_name VARCHAR(50)
);
show tables;
+---------------+
| Tables_in_23r |
+---------------+
| student       |
+---------------+
INSERT INTO student(id, name, mobile_no, batch_name) VALUES(1, 'Jayakrishna', '1234567890', '23R_CSE'),
(2, 'Srineth' , '8899001122', '23R_ECE'),(3, 'nikhil', '9999922222', '23R_IT');
select * from student;

select concat(name, ' is from ', batch_name) from student;
+---------------------------------------+
| concat(name, ' is from ', batch_name) |
+---------------------------------------+
| Jayakrishna is from 23R_CSE           |
| Srineth is from 23R_ECE               |
| nikhil is from 23R_IT                 |
+---------------------------------------+


-- 2) select name from the table that start with given character(any char you can take as example ) 
-- using like operation
select name from student where name like 'J%';
+-------------+
| name        |
+-------------+
| Jayakrishna |
+-------------+

select * from student where name like('j%');
+----+-------------+------------+------------+
| id | name        | mobile_no  | batch_name |
+----+-------------+------------+------------+
|  1 | Jayakrishna | 1234567890 | 23R_CSE    |
+----+-------------+------------+------------+
select * from student where name like('n%');
+----+---------+------------+------------+
| id | name    | mobile_no  | batch_name |
+----+---------+------------+------------+
|  2 | Srineth | 8899001122 | 23R_ECE    |
+----+---------+------------+------------+
select * from student where name like('s%');
+----+--------+------------+------------+
| id | name   | mobile_no  | batch_name |
+----+--------+------------+------------+
|  3 | nikhil | 9999922222 | 23R_IT     |
+----+--------+------------+------------+



 

