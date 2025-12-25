select country, sum(budget) as total_budget
from (SELECT * FROM ai_budget_usa
UNION ALL
SELECT * FROM ai_budget_uk
UNION ALL
SELECT * FROM ai_budget_japan
) as tmp
where year>=2019 
group by country
order by total_budget desc


