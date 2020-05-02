DROP TABLE IF EXISTS departments CASCADE;
DROP TABLE IF EXISTS dept_emp CASCADE;
DROP TABLE IF EXISTS dept_manager CASCADE;
DROP TABLE IF EXISTS employees CASCADE;
DROP TABLE IF EXISTS salaries CASCADE;
DROP TABLE IF EXISTS titles CASCADE;

CREATE TABLE "departments" (
    "dept_no" varchar(10)  NOT NULL PRIMARY KEY,
    "dept_name" varchar(30) NOT NULL
);

CREATE TABLE "employees" (
    "emp_no" int   NOT NULL PRIMARY KEY,
    "birth_date" date   NOT NULL,
    "first_name" varchar(30)   NOT NULL,
    "last_name" varchar(30)   NOT NULL,
    "gender" varchar(1)   NOT NULL,
    "hire_date" date   NOT NULL
);

CREATE TABLE "dept_emp" (
    "emp_no" int   NOT NULL,
    "dept_no" varchar(10)   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL
);

CREATE TABLE "dept_manager" (
    "dept_no" varchar(10)   NOT NULL,
    "emp_no" int   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL
);

CREATE TABLE "salaries" (
    "emp_no" int   NOT NULL,
    "salary" int   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL
);

CREATE TABLE "titles" (
    "emp_no" int   NOT NULL,
    "title" varchar(30)   NOT NULL,
    "from_date" date   NOT NULL,
    "to_date" date   NOT NULL
);



--IMPORT CSV FILES FIRST
--THEN
--START
ALTER 
TABLE "dept_emp" ADD 
CONSTRAINT "fk_dept_emp_dept_no"
FOREIGN KEY("dept_no")
REFERENCES 
"departments" ("dept_no");



ALTER 
TABLE "dept_manager" ADD 
CONSTRAINT "fk_dept_manager_dept_no"
FOREIGN KEY("dept_no")
REFERENCES 
"departments" ("dept_no");



ALTER 
TABLE "dept_manager" ADD 
CONSTRAINT "fk_dept_manager_emp_no"
FOREIGN KEY("emp_no")
REFERENCES 
"employees" ("emp_no");



ALTER 
TABLE "employees" ADD 
CONSTRAINT "fk_employees_emp_no"
FOREIGN KEY("emp_no")
REFERENCES 
"employees" ("emp_no");



ALTER 
TABLE "salaries" ADD 
CONSTRAINT "fk_salaries_emp_no"
FOREIGN KEY("emp_no")
REFERENCES 
"employees" ("emp_no");

ALTER 
TABLE "titles" ADD 
CONSTRAINT "fk_titles_emp_no"
FOREIGN KEY("emp_no")
REFERENCES 
"employees" ("emp_no");






