select p.name as  provider_name,sum(pg.power_generated ) as total_power_generated 
from provider p
join renewable_source rs on rs.provider_id=p.id
join power_generation pg on pg.source_id=rs.id
join region r on p.region_id =r.id
where r.name like '%st' and (pg.date>='2021-01-01' and pg.date<='2021-03-31') and pg.power_generated>0
group by p.name
having sum(CASE WHEN rs.name='Solar' THEN 1 ELSE 0 END)>0 and sum(CASE WHEN rs.name='Wind' THEN 1 ELSE 0 END)>0
order by total_power_generated desc
limit 3
