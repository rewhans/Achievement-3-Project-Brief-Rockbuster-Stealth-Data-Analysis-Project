-- To output Movie Rating and their counts

SELECT rating, COUNT(*) as count 
FROM film
GROUP BY rating;
