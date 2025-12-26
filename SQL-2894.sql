select origin_country,count(distinct id) model_count
from Vehicle_Releases
where Horsepower>=150 and Horsepower<=350 and Release_Date>'2018-12-31'
group by Origin_Country
order by model_count desc
