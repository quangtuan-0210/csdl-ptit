select o.OrderID, c.CustomerName, count(o.OrderID) as TotalLines
from OrderItem o 
join SaleOrder s on o.OrderID=s.OrderID 
join Customer c on c.CustID=s.CustID
group by OrderID
having count(o.OrderID)>=2
order by OrderID asc
