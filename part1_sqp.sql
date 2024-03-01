/* Create database*/

create database TNSIF_DB;

/*Use databse*/
use TNSIF_DB;

/*Create table */
create table myDatabase
	  (
      Id int primary key,
      Name varchar(30),
      PhoneNo varchar(30),
      Gender varchar(1)
      );

/*Insert data into table*/
insert into myDatabase(
	  Id, Name, PhoneNo,Gender)
      values (1,'Nikita Kadam','8806172653','F'),
			 (2,'Kishori Karnjule','7845172653','F'),
             (3,'Gauri Nikam','9844751532','F'),
             (4,'Kohen Robinson','7896541254','M'),
             (5,'Nora Jensen','9658745621','F'),
             (6,'Jonah Hudson','8957456321','M'),
             (7,'Lila Stevens','9685759171','F'),
             (8,'Jake Curry','9685965475','M')
             ;

/*Display Table Data*/
select * from myDatabase;

/*Add columm in table*/
ALTER TABLE myDatabase
ADD Age int;


/*Update Perticuler data*/
UPDATE myDatabase 
SET age = 21 
WHERE id = 1;

UPDATE myDatabase 
SET age = 22 
WHERE id = 8;


/*AND*/
SELECT * FROM myDatabase
WHERE Age = 22 AND Gender = 'F';

/*OR*/
SELECT Id FROM myDatabase
WHERE Name = 'Nikita kadam' OR PhoneNo = '8806172653';

/*NOT*/
SELECT Id FROM myDatabase
WHERE NOT Name = 'Nikita kadam' AND NOT PhoneNo = '8806172653';

/*IN*/
SELECT * FROM myDatabase
WHERE Age IN ('19','20','21');

/*BETWEEN*/
SELECT * FROM myDatabase
WHERE Age BETWEEN 10 AND 20;

/*LIKE*/
SELECT Name FROM myDatabase
WHERE Name LIKE 'N%';

SELECT Name FROM myDatabase
WHERE Name LIKE '%a';

/*ORDER BY*/
SELECT * FROM myDatabase
ORDER BY Name DESC;


/*LIMIT*/
SELECT Id FROM myDatabase
LIMIT 3;

SELECT * FROM myDatabase
WHERE Age='22'
LIMIT 3;