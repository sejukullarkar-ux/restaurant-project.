CREATE DATABASE college;
use college;
CREATE table student (
id INT primary key,
name  varchar(50),
AGE INT NOT NULL
);
INSERT INTO student VALUES(1,"SEJAL",19);
INSERT INTO student VALUES(2,"VAISHU",20);
SELECT * FROM student;