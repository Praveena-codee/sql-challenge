DROP TABLE Department;
CREATE TABLE Department (
    Dept_No VARCHAR(255)   NOT NULL,
    Dept_Name VARCHAR(255)   NOT NULL,
    CONSTRAINT pk_Department PRIMARY KEY (
        Dept_No
     )
);

DROP TABLE Titles;
CREATE TABLE Titles (
    Emp_Title_id VARCHAR(255)   NOT NULL,
    Titles VARCHAR(255)   NOT NULL,
    CONSTRAINT pk_Titles PRIMARY KEY (
        Emp_Title_id
     )
);

DROP TABLE Employees;
CREATE TABLE Employees (
    Emp_No INT   NOT NULL,
    Emp_Title_id VARCHAR(255)   NOT NULL,
    Birth_Date date   NOT NULL,
    First_Name VARCHAR(255)   NOT NULL,
    Last_Name VARCHAR(255)   NOT NULL,
    Sex VARCHAR(255)   NOT NULL,
    Hiring_Date date   NOT NULL,
    CONSTRAINT pk_Employees PRIMARY KEY (
        Emp_No
     )
);


DROP TABLE Dept_Emp;
CREATE TABLE Dept_Emp (
    Emp_No INT   NOT NULL,
    Dept_No VARCHAR(255)   NOT NULL
);


DROP TABLE Dept_Manager;
CREATE TABLE Dept_Manager (
    Dept_No VARCHAR(255)   NOT NULL,
    Emp_No INT   NOT NULL
);

DROP TABLE Salaries;
CREATE TABLE Salaries (
    Emp_No INT   NOT NULL,
    Salary INT   NOT NULL
);
