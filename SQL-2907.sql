select territory,
  sum(case when tmp.type='HOSPITAL' then tmp.num_beds else 0 end) as total_hospital_beds,
  sum(case when tmp.type='CLINICS' then tmp.num_beds else 0 end) as total_clinic_beds,
  sum(tmp.num_beds) as total_beds
from (
  select id,name,location,num_beds,territory,'HOSPITAL' as type from hospitals
  union all
  select id,name,location,num_beds,territory,'CLINICS' as type from clinics 
) as tmp
group by territory
order by total_beds desc
