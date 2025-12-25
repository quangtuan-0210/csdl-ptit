select category,sum(tickets_sold) total_tickets
from events
where category in ('music','theater')
group by category
having sum(tickets_sold)>=200
