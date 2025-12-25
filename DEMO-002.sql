select  OrderID, CustomerName
from CUSTOMER c 
join SALEORDER s on c.CustID=s.CustID
order by OrderID asc
