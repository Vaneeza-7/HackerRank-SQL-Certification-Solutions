--write a query to find the stock codes of all the stocks which are profitable.

select price_today.stock_code
from price_today
inner join price_tomorrow
on price_tomorrow.stock_code=price_today.stock_code
where price_tomorrow.price > price_today.price