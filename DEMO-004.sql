select c.CustomerName, COALESCE(sum(case when p.Status='PAID' then Total else 0 end),0) as PaidTotal
from CUSTOMER c
left join SALEORDER s on c.CustID=s.CustID
left join PAYMENT p on p.OrderID=s.OrderID 
group by c.CustomerName,c.CustID
order by c.CustomerName asc
--coalesce biến null thành 0--
