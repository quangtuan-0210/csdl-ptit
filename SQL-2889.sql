select  product_name,sum(quantity) as total_qty 
from products p 
join sales s on s.product_id =p.product_id 
join time t on t.time_id=s.time_id
where category ='Hair Care' and year(sale_date )='2025'
group by product_name
order by total_qty desc
