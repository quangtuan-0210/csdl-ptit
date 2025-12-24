SELECT 
    t.username,
    t.dept,
    t.number
FROM Instructor AS i
JOIN Teaches AS t ON i.username = t.username

ORDER BY i.lname DESC
LIMIT 2;
