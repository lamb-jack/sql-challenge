DROP TABLE departments IF EXISTS;
DROP TABLE dept_emp IF EXISTS;
DROP TABLE dept_manager IF EXISTS;
DROP TABLE employees IF EXISTS;
DROP TABLE salaries IF EXISTS;
DROP TABLE titles IF EXISTS;

CREATE TABLE departments (
	id SERIAL PRIMARY KEY,
	dept_no VARCHAR NOT NULL,
	dept_name VARCHAR NOT NULL
);

CREATE TABLE dept_emp (
	id SERIAL PRIMARY KEY,
	emp_no INT NOT NULL,
	dept_no VARCHAR NOT NULL
);

CREATE TABLE dept_manger (
	id SERIAL PRIMARY KEY,
	dept_no VARCHAR NOT NULL,
	emp_no INT NOT NULL
);

CREATE TABLE employees (
	id SERIAL PRIMARY KEY,
	emp_no INT NOT NULL,
	emp_title VARCHAR NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR NOT NULL,
	last_name VARCHAR NOT NULL,
	sex VARCHAR NOT NULL,
	hire_date DATE NOT NULL
);

CREATE TABLE salaries (
	id SERIAL PRIMARY KEY,
	emp_no INT NOT NULL,
	salary INT NOT NULL
);

CREATE TABLE titles (
	id SERIAL PRIMARY KEY,
	title_id VARCHAR NOT NULL,
	title VARCHAR NOT NULL
);