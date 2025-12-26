select vt.Name as type_name,max(Horsepower) as max_hp
from Vehicle_Types vt
join Vehicle_Releases vr on vt.Id=vr.Vehicle_Type_Id 
where Release_Date>='2021-01-01' and Release_Date<='2022-12-31'
group by vt.Name
order by max_hp desc
