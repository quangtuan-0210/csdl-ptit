select service_type,sum(subscription_fee) as total_revenue
from (
  select 'mobile' as service_type,subscription_fee,date from mobile_subscribers
  union all 
  select 'broadband' as service_tyoe,subscription_fee,date from broadband_subscribers
) as tmp 
where date>='2025-03-01' and date<='2025-03-31'
group by service_type
order by total_revenue desc
