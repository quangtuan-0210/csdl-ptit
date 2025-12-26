SELECT t1.Title AS Title1, t2.Title AS Title2, COUNT(*) AS co_exhibit_count
FROM (
    SELECT a.ArtworkID, a.Title, e.ExhibitionID 
    FROM Artworks a 
    JOIN Exhibitions e ON e.ArtworkID = a.ArtworkID
) AS t1
JOIN (
    SELECT a.ArtworkID, a.Title, e.ExhibitionID 
    FROM Artworks a 
    JOIN Exhibitions e ON e.ArtworkID = a.ArtworkID
) AS t2 
ON t1.ExhibitionID = t2.ExhibitionID AND t1.ArtworkID < t2.ArtworkID 
GROUP BY t1.Title, t2.Title
ORDER BY co_exhibit_count DESC, Title1, Title2 ASC
