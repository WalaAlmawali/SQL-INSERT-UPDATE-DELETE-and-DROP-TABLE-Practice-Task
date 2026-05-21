CREATE DATABASE Company
use Company

CREATE TABLE Employee(
SSN int PRIMARY KEY,
Fname VARCHAR(10) NOT NULL,
Lname VARCHAR(10) NOT NULL,
Gender CHAR(1),
Super_Id int,
FOREIGN KEY (Super_Id)
REFERENCES Employee(SSN)
);

CREATE TABLE Department(
Dnum int PRIMARY KEY,
Dname VARCHAR(30) NOT NULL,
HireDate DATE,
Manager_Id int,
FOREIGN KEY(Manager_Id)
REFERENCES Employee(SSN)
);

ALTER TABLE Employee
ADD Dept_Id INT;

ALTER TABLE Employee
ADD CONSTRAINT fk_department
FOREIGN KEY (Dept_Id)
REFERENCES Department(Dnum);

CREATE TABLE Dept_location(
Dept_no int,
Loc VARCHAR (30) NOT NULL,

PRIMARY KEY (Dept_no,Loc),

FOREIGN KEY (Dept_no)
REFERENCES Department(Dnum)
);

CREATE TABLE Project(
Pnum int PRIMARY KEY,
Pname VARCHAR(30),
City VARCHAR(30),
Loc VARCHAR(50),
Dept_no int,
FOREIGN KEY (Dept_no)
REFERENCES Department(Dnum)
);

CREATE TABLE Work_On(
Employee_ssn int,
Project_no int,
Work_hour int,

PRIMARY KEY (Employee_ssn,Project_no),
FOREIGN KEY (Employee_ssn)
REFERENCES Employee(SSN),

FOREIGN KEY (Project_no)
REFERENCES Project(Pnum)

);

CREATE TABLE Dependent(
DepName VARCHAR(30),
Gender CHAR(1),
Birth_Date DATE,
Employee_ssn int,
FOREIGN KEY (Employee_ssn)
REFERENCES Employee(SSN),

);

ALTER TABLE Employee
ADD Birth_Date DATE 
 
 -- create new database to change primary key to auto-increment 

 CREATE DATABASE Company_DB
 use Company_DB

 CREATE TABLE Employee(
SSN int PRIMARY KEY IDENTITY(1,1),
Fname VARCHAR(10) NOT NULL,
Lname VARCHAR(10) NOT NULL,
Gender CHAR(1),
Super_Id int,
FOREIGN KEY (Super_Id)
REFERENCES Employee(SSN)
);

CREATE TABLE Department(
Dnum int PRIMARY KEY IDENTITY(1,1),
Dname VARCHAR(30) NOT NULL,
HireDate DATE,
Manager_Id int,
FOREIGN KEY(Manager_Id)
REFERENCES Employee(SSN)
);


ALTER TABLE Employee
ADD Dept_Id INT;

ALTER TABLE Employee
ADD CONSTRAINT fk_department
FOREIGN KEY (Dept_Id)
REFERENCES Department(Dnum);

CREATE TABLE Dept_location(
Dept_no int,
Loc VARCHAR (30) NOT NULL,

PRIMARY KEY (Dept_no,Loc),

FOREIGN KEY (Dept_no)
REFERENCES Department(Dnum)
);

CREATE TABLE Project(
Pnum int PRIMARY KEY,
Pname VARCHAR(30),
City VARCHAR(30),
Loc VARCHAR(50),
Dept_no int,
FOREIGN KEY (Dept_no)
REFERENCES Department(Dnum)
);

CREATE TABLE Work_On(
Employee_ssn int,
Project_no int,
Work_hour int,

PRIMARY KEY (Employee_ssn,Project_no),
FOREIGN KEY (Employee_ssn)
REFERENCES Employee(SSN),

FOREIGN KEY (Project_no)
REFERENCES Project(Pnum)

);

DROP TABLE Project

CREATE TABLE Project(
Pnum int PRIMARY KEY IDENTITY(1,1),
Pname VARCHAR(30),
City VARCHAR(30),
Loc VARCHAR(50),
Dept_no int,
FOREIGN KEY (Dept_no)
REFERENCES Department(Dnum)
);

CREATE TABLE Dependent(
DepName VARCHAR(30),
Gender CHAR(1),
Birth_Date DATE,
Employee_ssn int,
PRIMARY KEY (DepName,Employee_ssn),
FOREIGN KEY (Employee_ssn)
REFERENCES Employee(SSN),

);

ALTER TABLE Employee
ADD Birth_Date DATE 
 
 INSERT INTO Department (Dname)
 VALUES ('Human Resources'),
  ('Finance'), ('IT'),('Marketing'),('Sales');

  select * from Department
  select* from Employee

  INSERT INTO Employee ( Fname, Lname, Gender,Super_Id,Birth_Date)
  VALUES ('Ali', 'Khan', 'M', NULL, '1985-02-10');

  UPDATE Employee
  SET Dept_Id = 1
  WHERE SSN = 1;

  INSERT INTO Employee (Fname, Lname,Gender, Dept_Id,Birth_Date )
  VALUES ('Sara', 'Ahmed','F',2, '1990-06-15');

  INSERT INTO Employee (Fname, Lname,Gender, Dept_Id,Birth_Date )
  VALUES ('Omar', 'Hassan','M',4, '1988-09-20');

  INSERT INTO Employee (Fname, Lname,Gender, Dept_Id,Birth_Date )
  VALUES ('Lina', 'Youssef', 'F',3, '1992-03-12');

  INSERT INTO Employee (Fname, Lname,Gender, Dept_Id,Birth_Date )
  VALUES ('Khalid', 'Ali', 'M',5, '1987-11-05');

  INSERT INTO Employee (Fname, Lname,Gender, Dept_Id,Birth_Date )
  VALUES ( 'Nora', 'Salem', 'F',2, '1987-12-05');

  INSERT INTO Employee (Fname, Lname,Gender, Dept_Id,Birth_Date )
  VALUES ( 'Hassan', 'Mahmoud', 'M',2, '1987-12-04');

  INSERT INTO Employee (Fname, Lname,Gender, Dept_Id,Birth_Date )
  VALUES ('Mona', 'Fahmy',  'F',1, '1988-12-04');

  INSERT INTO Employee (Fname, Lname,Gender, Dept_Id,Birth_Date )
  VALUES ('Yousef', 'Ibrahim', 'M',5, '1988-10-04');

  INSERT INTO Employee (Fname, Lname,Gender, Dept_Id,Birth_Date )
  VALUES ('Reem', 'Adel',  'F',1, '1999-10-04');

  UPDATE Employee
  SET Super_Id = 2
  WHERE Dept_id = 1;

  UPDATE Employee
  SET Super_Id = 5
  WHERE Dept_id = 2;

  UPDATE Employee
  SET Super_Id = 8
  WHERE Dept_id IN (3, 4, 5);

  UPDATE Department
  SET Manager_Id = 1 , HireDate = GETDATE()
  WHERE Dnum = 1;

  UPDATE Department
  SET Manager_Id = 4 , HireDate = GETDATE()
  WHERE Dnum = 2;

  UPDATE Department
  SET Manager_Id = 2 , HireDate = GETDATE()
  WHERE Dnum = 3;

  UPDATE Department
  SET Manager_Id = 3 , HireDate = GETDATE()
  WHERE Dnum = 4;

  UPDATE Department
  SET Manager_Id = 6 , HireDate = GETDATE()
  WHERE Dnum = 5;

 INSERT INTO Project (Pname, City, Loc, Dept_no)
 VALUES ('Website Redesign', 'Muscat', 'HQ Office', 1);

 INSERT INTO Project (Pname, City, Loc, Dept_no)
VALUES ('Mobile App Development', 'Muscat', 'Tech Center', 2);

INSERT INTO Project (Pname, City, Loc, Dept_no)
VALUES ('HR Payroll System', 'Sohar', 'Branch Office', 3);

INSERT INTO Project (Pname, City, Loc, Dept_no)
VALUES ('Marketing Campaign 2026', 'Muscat', 'Marketing Dept', 4);

INSERT INTO Project (Pname, City, Loc, Dept_no)
VALUES ('Sales Analytics System', 'Salalah', 'Sales Office', 5);

SELECT * FROM Project

ALTER TABLE Employee
ADD Salary DECIMAL(10,2);

UPDATE Employee
SET Salary = 450
WHERE Dept_id = 1;

UPDATE Employee
SET Salary = 400
WHERE Dept_id = 2;

UPDATE Employee
SET Salary = 500
WHERE Dept_id = 3;

UPDATE Employee
SET Salary = 550
WHERE Dept_id = 4;

UPDATE Employee
SET Salary = 600
WHERE Dept_id = 5;

UPDATE Employee
SET Salary = Salary * 1.10
WHERE Dept_id = 2;

UPDATE Department
SET Dname  = 'Research and Development'
WHERE Dnum = 3;

UPDATE Project
SET Pname = 'AI Automation System'
WHERE Pnum = 1;

UPDATE Employee
SET Dept_id = 5
WHERE SSN = 9;

UPDATE Employee
SET Salary = 550
WHERE SSN = 8;

SELECT * FROM Employee

UPDATE Department
SET Manager_Id = NULL
WHERE Manager_Id = 5;

UPDATE Employee
set Super_Id = null
where SSN = 5;

UPDATE Employee
set Super_Id = null
where SSN In(2,6,7);

DELETE FROM Employee
WHERE SSN = 5;

Update Department
set Manager_Id = null
where Manager_Id = 3;

Update Department
set Manager_Id = null
where Manager_Id = 4;

DELETE FROM Employee
WHERE Dept_Id = 3;

select * from Employee
select * from ProjectS

DELETE FROM Project
WHERE Pnum = 5;

select * from Department

UPDATE Project
SET Dept_no = 1
WHERE Dept_no = 3;

DELETE FROM Department
WHERE Dnum = 3;

DELETE FROM Employee
WHERE Salary > 550;

DROP TABLE Dependent 

