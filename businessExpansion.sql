--write a query to find all pairs of customers who have been in contact more than once.
go
select user_account_id, user_account.first_name, user_account.last_name, customer_id, customer.customer_name, count(*)
from contact
inner join user_account on contact.user_account_id=user_account.id
inner join customer on customer.id=contact.customer_id
group by user_account_id, customer_id, user_account.first_name, user_account.last_name, customer.customer_name
having count(*) > 1
