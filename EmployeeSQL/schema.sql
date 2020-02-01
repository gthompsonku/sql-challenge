DROP TABLE IF EXISTS titles cascade;
DROP TABLE IF EXISTS salaries cascade;
DROP TABLE IF EXISTS dept_manager cascade;
DROP TABLE IF EXISTS dept_emp cascade;
DROP TABLE IF EXISTS employees cascade;
DROP TABLE IF EXISTS departments cascade;



CREATE TABLE "titles" (
    "emp_no" INTEGER   NOT NULL,
    "title" VARCHAR   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL
);

CREATE TABLE "salaries" (
    "emp_no" INTEGER   NOT NULL,
    "salary" INTEGER   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL
);

CREATE TABLE "employees" (
    "emp_no" INTEGER   NOT NULL PRIMARY KEY,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "gender" VARCHAR   NOT NULL,
    "hire_date" DATE   NOT NULL
);

CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" INTEGER   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL
);

CREATE TABLE "dept_emp" (
    "emp_no" INTEGER   NOT NULL,
    "dept_no" VARCHAR   NOT NULL,
    "from_date" DATE   NOT NULL,
    "to_date" DATE   NOT NULL
);

CREATE TABLE "departments" (
    "dept_no" VARCHAR   NOT NULL PRIMARY KEY,
    "dept_name" VARCHAR   NOT NULL
);

ALTER TABLE titles
ADD COLUMN id SERIAL PRIMARY KEY;

ALTER TABLE salaries
ADD COLUMN id SERIAL PRIMARY KEY;

ALTER TABLE dept_manager
ADD COLUMN id SERIAL PRIMARY KEY;

ALTER TABLE dept_emp
ADD COLUMN id SERIAL PRIMARY KEY;

ALTER TABLE titles
ADD FOREIGN KEY (emp_no)
REFERENCES employees(emp_no);

ALTER TABLE salaries
ADD FOREIGN KEY (emp_no)
REFERENCES employees(emp_no);

ALTER TABLE dept_manager
ADD FOREIGN KEY (emp_no)
REFERENCES employees(emp_no);

ALTER TABLE dept_emp
ADD FOREIGN KEY (emp_no)
REFERENCES employees(emp_no);

ALTER TABLE dept_emp
ADD FOREIGN KEY (dept_no)
REFERENCES departments(dept_no);

ALTER TABLE dept_manager
ADD FOREIGN KEY (dept_no)
REFERENCES departments(dept_no);

