select category,count(distinct id) event_count 
from events
where tickets_sold>=100 and tickets_sold<=250
group by category
order by event_count desc
