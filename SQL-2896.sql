select  vt.Name as type_name,avg(vr.Horsepower ) as avg_hp
from Vehicle_Types vt
join Vehicle_Releases vr on vt.Id=vr.Vehicle_Type_Id 
where vt.Name in('SUV','Truck') and vr.Origin_Country in ('USA','GERMANY') and vr.Release_Date>='2020-01-01'
group by vt.Name
order by avg_hp desc
