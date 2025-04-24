-- Top 10 cities based on customers within top 10 countries

SELECT C.city AS Top_Cities,
 D.country AS Top_Countries,
 COUNT (A.customer_id) as total_customers
 FROM customer A
 INNER JOIN address B ON A.address_id = B.address_id
 INNER JOIN city C ON B.city_id = C.city_id
 INNER JOIN country D ON C.country_id = D.country_id
 WHERE D.country IN (
 SELECT D.country
 FROM customer A
 INNER JOIN address B ON A.address_id = B.address_id
 INNER JOIN city C ON B.city_id = C.city_id
 INNER JOIN country D ON C.country_id = D.country_id
 GROUP BY D.country
 ORDER BY COUNT (A.customer_id) DESC
 LIMIT 10)
 GROUP BY D.country, C.city
 ORDER BY COUNT (A.customer_id) DESC
 LIMIT 10;
