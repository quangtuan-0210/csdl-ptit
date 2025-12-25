SELECT name, category,tickets_sold
FROM events e1
WHERE category IN ('music', 'theater')
    AND tickets_sold > (SELECT AVG(tickets_sold) FROM events e2 WHERE e2.category = e1.category)
ORDER BY tickets_sold DESC;
