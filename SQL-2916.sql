SELECT s.country,
    ROUND(100*SUM(CASE WHEN pt.recycled_materials = 1 THEN 1 ELSE 0 END)/COUNT(p.product_id), 2) AS recycle_rate
FROM (SELECT DISTINCT country FROM SupplyChainViolations) s 
JOIN Products p ON s.country = p.country
JOIN ProductTransparency pt ON p.product_id = pt.product_id
GROUP BY s.country
Having count(pt.product_id)>=2
ORDER BY recycle_rate desc,s.country ;
