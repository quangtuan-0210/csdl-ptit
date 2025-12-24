INSERT INTO VipCustomer (CustID, CustomerName, City, TotalSpent2024)
SELECT 
 c.CustID,
 c.CustomerName,
 c.City,
 SUM(s.TotalAmount) AS TotalSpent
FROM 
 Customer c
JOIN 
 SaleOrder s ON c.CustID = s.CustID
WHERE 
 YEAR(s.OrderDate) = 2024 
GROUP BY 
 c.CustID, c.CustomerName, c.City
HAVING SUM(s.TotalAmount) >= 2000;
