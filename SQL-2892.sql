select p.vegan,sum(s.quantity)as total_qty
from products p 
join sales s on s.product_id =p.product_id 
join time t on t.time_id=s.time_id 
where p.category in ('Hair Care','Body Care') and t.sale_date>='2025-01-01' and t.sale_date<='2025-06-30'
group by p.vegan
order by total_qty desc
