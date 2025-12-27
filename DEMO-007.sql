update SALEORDER s
set s.Status='PAID'
where s.OrderID in(
  select p.OrderID from PAYMENT p
  where p.Status='PAID'
)
