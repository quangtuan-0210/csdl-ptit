select City,sum(Amount) as TotalRevenue
from ( 
  select City,Amount from OnlineOrder
  union all
  select City,Amount from StoreOrder 
) as tmp 
group by City 
order by City asc
