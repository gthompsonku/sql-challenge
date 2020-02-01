'List the following details of each employee: employee number, last name, first name, gender, and salary.'
select employees.emp_no, last_name, first_name, gender, salary FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no
ORDER BY emp_no;


'List employees who were hired in 1986.'
select last_name, first_name, hire_date FROM employees
where hire_date < '1987-01-01' AND hire_date > '12-31-1985'
Order by hire_date;


'List the manager of each department with the following information: department number, department name, 
the managers employee number, last name, first name, and start and end employment dates.'
select departments.dept_no, dept_name, dept_manager.emp_no, employees.last_name, employees.first_name, 
dept_manager.from_date, dept_manager.to_date 
from departments
INNER JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
INNER JOIN employees ON employees.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date = '9999-01-01';


'List the department of each employee with the following information: employee number, last name, 
first name, and department name.'
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name 
FROM dept_emp
INNER JOIN employees ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE dept_emp.to_date = '9999-01-01'
ORDER BY emp_no;


'List all employees whose first name is "Hercules" and last names begin with "B."'
select first_name, last_name, birth_date, gender from employees
where first_name = 'Hercules'
AND last_name like 'B%';


'List all employees in the Sales department, including their employee number, last name, first name, 
and department name.'
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name 
FROM dept_emp
INNER JOIN employees ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales';


'List all employees in the Sales and Development departments, including their employee number, 
last name, first name, and department name.'
select dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name 
FROM dept_emp
INNER JOIN employees ON employees.emp_no = dept_emp.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales'
OR departments.dept_name = 'Development';


' In descending order, list the frequency count of employee last names, 
i.e., how many employees share each last name.'
select last_name, count(*)
from employees
group by last_name
Order by count desc;


select * from departments;
select * from employees;
select * from dept_emp;


