CREATE TABLE departments(
	dept_no VARCHAR (30) PRIMARY KEY NOT NULL,
	dept_name VARCHAR (30) NOT NULL
);

CREATE TABLE titles (
	title_id VARCHAR (30) PRIMARY KEY NOT NULL,
	title VARCHAR (30) NOT NULL
);

CREATE TABLE employee (
	emp_no INTEGER PRIMARY KEY NOT NULL,
	emp_title_id VARCHAR (30) NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
	birth_date DATE NOT NULL,
	first_name VARCHAR (30) NOT NULL,
	last_name VARCHAR (30) NOT NULL,
	sex VARCHAR (30) NOT NULL,
	hire_date DATE NOT NULL
);

CREATE TABLE dept_emp(
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employee (emp_no),
	dept_no VARCHAR (30) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	PRIMARY KEY (emp_no, dept_no)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR (30) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employee (emp_no),
	PRIMARY KEY (emp_no, dept_no)
	
);

CREATE TABLE salaries (
	salary_id SERIAL PRIMARY KEY NOT NULL,
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employee (emp_no),
	salary INTEGER NOT NULL	
);