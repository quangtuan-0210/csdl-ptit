select year, sum(budget) as total_budget
from (SELECT * FROM ai_budget_usa
UNION ALL
SELECT * FROM ai_budget_uk
UNION ALL
SELECT * FROM ai_budget_japan
) as tmp
where year>=2018 and year<=2021 
group by year
order by total_budget desc
limit 1

