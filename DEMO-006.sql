UPDATE EMPLOYEE e
JOIN (
    SELECT EmpID
    FROM SALEORDER
    WHERE Status = 'COMPLETED'
    GROUP BY EmpID
    HAVING SUM(TotalAmount) > 50000 
) AS top_sales ON e.EmpID = top_sales.EmpID
SET e.Salary = e.Salary * 1.1;
