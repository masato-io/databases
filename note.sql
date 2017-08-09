-- JOIN
SELECT t.name, t.id FROM teachers t INNER JOIN departments d ON t.department = d.id;
SELECT t.name, t.id FROM teachers t INNER JOIN departments d ON t.department = d.id where d.name = 'psy';
SELECT d.name FROM departments d INNER JOIN teachers t ON t.department = d.id where t.name = 'sunny';

-------------
mysql> CREATE TABLE pet (name VARCHAR(20), owner VARCHAR(20), species VARCHAR(20), sex CHAR(1), birth DATE, death DATE);

CREATE TABLE MyGuests (
  id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  firstname VARCHAR(30) NOT NULL,
  lastname VARCHAR(30) NOT NULL,
  email VARCHAR(50),
  reg_date TIMESTAMP
)

show databases;
show tables;
SHOW ENGINE INNODB STATUS;
describe pet;
use masato
drop database chat;
drop table chat;
drop table messages;
drop table roomname;

CREATE DATABASE pet;
CREATE TABLE pet (name VARCHAR(20), owner VARCHAR(20), species VARCHAR(20), sex CHAR(1), birth DATE, death DATE);
INSERT INTO pet (name, owner) VALUES('toby', 'masato');
UPDATE pet SET name = 'penny' where owner = 'masato';

INSERT INTO tbl_name (col1,col2) VALUES(15,col1*2);

mysql.server start
mysql.server stop
mysql -u root < server/schema.sql;
mysql-ctl cli
