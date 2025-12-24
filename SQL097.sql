select 
  startA.machine_id,
  round(avg(endA.timestamp-startA.timestamp),3) as processing_time
from Activity as startA
join Activity as endA
  on startA.machine_id=endA.machine_id
  and startA.process_id=endA.process_id
  and startA.activity_type='start'
  and endA.activity_type='end'
group by startA.machine_id
