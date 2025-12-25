select  community_type, count(distinct student_id) as students_impacted
from initiatives ini 
join impact im on im.initiative_id=ini.initiative_id
where initiative_date>='2025-01-01' and initiative_date<='2025-03-31'
group by community_type
order by students_impacted desc
