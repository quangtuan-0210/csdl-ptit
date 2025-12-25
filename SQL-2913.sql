select initiative_name , count(distinct student_id) as students_impacted
from initiatives ini 
join impact im on im.initiative_id=ini.initiative_id
where year(initiative_date)='2024'
group by initiative_name
having count(student_id)>=2
order by students_impacted desc
