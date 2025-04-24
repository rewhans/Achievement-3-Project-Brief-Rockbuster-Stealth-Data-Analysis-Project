-- Listing of countries with their customers listed outed from highest to lowest

SELECT co.country,
    COUNT(c.customer_id) as customer_count
 FROM customer c
 JOIN address a ON c.address_id = a.address_id
 JOIN city ci ON a.city_id = ci.city_id
 JOIN country co ON ci.country_id = co.country_id
 GROUP BY co.country
 ORDER BY customer_count DESC;
