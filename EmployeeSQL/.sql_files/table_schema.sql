create table titles (
	title_id varchar(5) primary key not null,
	title varchar(20) not null
);

create table employees (
	emp_no int primary key,
	emp_title_id varchar(5) not null,
	birth_date date,
	first_name varchar(20),
	last_name varchar(20),
	sex varchar(1),
	hire_date date,
	foreign key (emp_title_id) references titles(title_id)
);

create table departments (
	dept_no varchar(4) primary key,
	dept_name varchar(20)
);

create table dept_manager (
	man_table_id serial primary key,
	dept_no varchar(4) not null,
	emp_no int not null,
	foreign key (dept_no) references departments(dept_no),
	foreign key (emp_no) references employees(emp_no)
);

create table dept_emp (
	dept_table_id serial primary key,
	emp_no int not null,
	dept_no varchar(4) not null,
	foreign key (emp_no) references employees(emp_no),
	foreign key (dept_no) references departments(dept_no)
);

create table salaries (
	sal_table_id serial primary key,
	emp_no int not null,
	salary int,
	foreign key (emp_no) references employees(emp_no)
);
