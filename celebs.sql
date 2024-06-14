CREATE TABLE celebs (ID integer, first_name VARCHAR(50),
 second_name varchar(50),
 age int
  
 );
 INSERT INTO celebs (first_name,second_name,age,country)
 Values ("koech", "noel", 23, "nairobi");

select *
from celebs;
#ALTER  used to add new column
ALTER TABLE celebs 
ADD COLUMN home TEXT;
# Update: update the null column
UPDATE celebs
SET home= 'Rongai'
WHERE first_name ='koech';

drop table celebs;

CREATE TABLE celebs(
ID INTEGER PRIMARY KEY,
name TEXT,
age INTEGER
);
INSERT INTO celebs
VALUES ( 1, "Basil",22);

SELECT *
FROM celebs;

#adding a new column to the table
ALTER TABLE celebs
ADD COLUMN home TEXT;
SELECT *
FROM celebs;

UPDATE celebs
set home='England'
where ID =1;
 ALTER TABLE celebs
 ADD COLUMN team TEXT;
 
 INSERT INTO celebs
 VALUES (2,"Jacky",20,"Murang'a","Arsenal");
 SELECT *
 FROM celebs;

UPDATE  celebs
SET team="Arsenal"
WHERE ID=1;

INSERT INTO celebs
values	(3,"Nicole",1,"Nakuru","Arsenal");
 
SELECT *
FROM celebs;



SELECT *, age*12 AS points
From celebs;

Select home FROM celebs WHERE  age > 2;

Select *
from celebs
where name like 'b%';
