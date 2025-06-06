use college;

Select * from wsales;

Select * from wsales where Holiday_flag = 1;

Select MAX(Weekly_Sales) from wsales;

Select AVG(Weekly_Sales) from wsales;

Select * from wsales 
ORDER BY Weekly_Sales ASC;

Select Date , avg(Weekly_Sales)
from wsales
Group by Date;

create view view100 AS
Select Weekly_Sales, Date from wsales;

select * from view100;

select Date,Weekly_Sales from wsales  
WHERE Weekly_Sales> (select  avg(Weekly_Sales) from wsales);

use college;

CREATE TABLE Students(
id INT PRIMARY KEY,
name VARCHAR(50));

INSERT INTO Students (id,name)
values 
(101,"adam"),
(102,"bob"),
(103,"casey");

CREATE TABLE course(
id INT PRIMARY KEY,
course VARCHAR(50));

INSERT INTO course(id,course) values
(102,"english"),
(105,"math"),
(103,"science"),
(107,"computer science");

select * from Students;
select * from course;

select * from Students
INNER JOIN course 
ON Students.id=course.id; 

select * from Students
LEFT JOIN course 
ON Students.id=course.id; 

select * from Students
RIGHT JOIN course 
ON Students.id=course.id; 

SELECT * FROM Students as s
LEFT JOIN course as c
ON s.id=c.id
UNION 
SELECT * FROM Students as s
RIGHT JOIN course as c
ON s.id=c.id;

SELECT * FROM Students as s
LEFT JOIN course as c
ON s.id=c.id
WHERE c.id is NULL;

SELECT * FROM Students as s
RIGHT JOIN course as c
ON s.id=c.id
WHERE s.id is NULL;

SELECT id from Students
UNION 
SELECT id from course;







