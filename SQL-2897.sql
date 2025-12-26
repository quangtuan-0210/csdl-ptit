select category,sum(tickets_sold) as total_tickets
from events
group by category
having sum(tickets_sold)>300
order by total_tickets desc
