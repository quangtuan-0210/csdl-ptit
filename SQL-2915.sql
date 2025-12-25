select s.country, count(s.country)  as recycled_products_count
from SupplyChainViolations s 
join Products p on s.country=p.country
join ProductTransparency pt on pt.product_id=p.product_id
where s.num_violations>=1 and pt.recycled_materials=1
group by s.country
order by recycled_products_count desc,s.country 
