--find all the products that were not sold
go
select product.sku, product.product_name
from product
where product.id not in (
  select invoice_item.product_id from invoice_item
  )
order by product.sku asc
