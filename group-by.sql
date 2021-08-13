SELECT COUNT(*), g.name
FROM genre g
JOIN track t
ON g.genre_id = t.genre_id
GROUP BY g.name;

SELECT COUNT(*), g.name
FROM track t
JOIN genre g ON g.genre_id = t.genre_id
WHERE g.name = 'Pop' OR g.name = 'Rock'
GROUP BY g.name;

SELECT COUNT(*), art.name
FROM artist art
JOIN album alb
ON art.artist_id = alb.artist_id
GROUP BY art.name