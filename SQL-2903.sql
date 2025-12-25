select  a.Title, count(e.ExhibitionID) as exhibitions_count 
from Artworks a
join Exhibitions e on a.ArtworkID=e.ArtworkID
group by a.ArtworkID, a.Title
having count(e.ExhibitionID)>=2
order by exhibitions_count desc,a.Title
