CREATE DATABASE BackentTest on
(
name=BackentTest_db,
FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BackendTest.mdf',
SIZE= 10MB, MAXSIZE= unlimited, FILEGROWTH=10%

)

log on 
(
name= BackendTestlog_db,
FILENAME='C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\BackendTest_log.mdf',
SIZE= 20MB, MAXSIZE= 100MB, FILEGROWTH=10%

)

USE BackentTest
CREATE TABLE Countries1
(
ID INT PRIMARY KEY,
Cname VARCHAR(50) NOT NULL,
Capital VARCHAR(50) NOT NULL,
CPopulation int,
LanguageId int NOT NULL,

)

CREATE TABLE Languages
(
ID INT PRIMARY KEY,
Lname VARCHAR(50) NOT NULL,
)

INSERT INTO Countries1 values (1,'Mexico','CDMX',1000000,2)
INSERT INTO Countries1 values (2,'USA','Whasington D.C',50000,2)

INSERT INTO Languages values (1,'Japanese')
INSERT INTO Languages values (2,'English')

UPDATE Countries1 SET CPopulation=250000 WHERE ID=1

DELETE FROM Countries1 WHERE CPopulation>=100000

SELECT *
FROM Countries1 Coun inner join Languages Lan ON Coun.LanguageId = Lan.ID




