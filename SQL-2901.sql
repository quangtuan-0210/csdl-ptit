select  r.title,count(g.id) as gene_count
from gene g
join research r on r.id=g.research_id 
group by r.title
order by gene_count desc,r.title
limit 3
