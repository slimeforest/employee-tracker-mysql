DROP DATABASE IF EXISTS employee_db;

CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE department (

id INT NOT NULL AUTO_INCREMENT,

name VARCHAR(30) NOT NULL,

PRIMARY KEY(id)

);

CREATE TABLE role (

id INT NOT NULL AUTO_INCREMENT,

title VARCHAR(30) NOT NULL,

salary DECIMAL(10,2) NOT NULL,

department_id INT NOT NULL,

PRIMARY KEY (id)

);

CREATE TABLE employee (

id INT NOT NULL AUTO_INCREMENT,

first_name VARCHAR(30) NOT NULL,

last_name VARCHAR(30) NOT NULL,

role_id INT NOT NULL,

manager_id INT,

PRIMARY KEY (id)

);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUE ("Tony", "Hawk", 1, null), ("Ozzy", "Osbourne", 1, 1), ("Bill", "Burr", 3, 2), ("Joe", "Rogan", 5, 2);

INSERT INTO department (name)
VALUES ("Accounting"), ("Human Resources"), ("Engineering"), ("Sales"), ("R&D") ;

INSERT INTO role (title, salary, department_id)
VALUE ("manager", 80000, 2), ("engineer", 69000, 3), ("accountant", 70000, 4), ("recruiter", 52500, 1), ("sales person", 78550, 5);
