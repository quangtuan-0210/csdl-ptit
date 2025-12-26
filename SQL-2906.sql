select tmp.name,sum(tmp.subscription_fee) total_fee
from (
  select * from mobile_subscribers
  union all 
  select * from broadband_subscribers
) as tmp
where date>='2025-01-01' and date<='2025-03-31'
group by tmp.name 
order by total_fee desc 
limit 3
