write a query to find the employee IDs along with the names of all its employees
who work in the HR department who eraned a bonus of 5000 dollars or more in the last quarter

select employee_ID, name 
from employee_information
inner join last_quarter_bonus
on last_quarter_bonus.employee_ID=employee_information.employee_ID
where last_quarter_bonus.bonus > 5000