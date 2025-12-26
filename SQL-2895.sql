select vt.Name as type_name,vr.Name as model_name, release_date
from Vehicle_Types vt
join Vehicle_Releases vr on vr.Vehicle_Type_Id=vt.Id 
join (
  select Vehicle_Type_Id,MAX(Release_Date) as max_d
  from Vehicle_Releases 
  group by Vehicle_Type_Id
) as tmp on tmp.Vehicle_Type_Id=vr.Vehicle_Type_Id and vr.Release_Date =tmp.max_d
order by type_name ASC,model_name ASC;
