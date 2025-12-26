select territory,round(100*sum(case when has_helipad=1 then 1 else 0 end)/count(distinct id),2) as helipad_rate
from hospitals
group by territory
having count(territory)>=1
order by helipad_rate desc
