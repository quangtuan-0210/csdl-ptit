select r.company_id, count(distinct g.id) distinct_gene_count
from research r
join gene g on g.research_id =r.id 
where r.start_date>='2024-01-01'
group by r.company_id
order by distinct_gene_count desc, r.company_id 
limit 1
