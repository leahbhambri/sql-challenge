--SQL Codes
-- create departments table
CREATE TABLE departments (
    dept_no VARCHAR(4),
    dept_name VARCHAR(100),
    PRIMARY KEY (dept_no)
);

-- create titles table
CREATE TABLE titles (
    title_id VARCHAR(5),
    title VARCHAR(100),
    PRIMARY KEY (title_id)    
);

-- create employees table
CREATE TABLE employees (
    emp_no VARCHAR(30),
    emp_title_id VARCHAR(5),
    birth_date VARCHAR(30),
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    sex VARCHAR(2),
    hire_date VARCHAR(30),
    PRIMARY KEY (emp_no)
);

-- create dept_emp table
CREATE TABLE dept_emp (
    emp_no VARCHAR(30),
    dept_no VARCHAR(4),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

-- create dept_manager table
CREATE TABLE dept_manager (
    dept_no VARCHAR(4),
    emp_no VARCHAR(30),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);

-- create salaries table
CREATE TABLE salaries (
    emp_no VARCHAR(30),
	salary INT,
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);
