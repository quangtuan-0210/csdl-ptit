SELECT 
 e.company_id,
 SUM(i.amount) AS total_amount_energy,
 e.environment + e.social + e.governance AS total_esg
FROM esg_factors e
JOIN impact_investments i 
 ON e.company_id = i.company_id
WHERE i.sector LIKE '%Energy%'
GROUP BY e.company_id,e.environment,e.social,e.governance
HAVING 
 SUM(e.environment + e.social + e.governance) > 7.5
 AND SUM(i.amount) > 10000000
ORDER BY total_amount_energy DESC;
