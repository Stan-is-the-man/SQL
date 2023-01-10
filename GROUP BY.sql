SELECT rating,ROUND(AVG(replacement_cost),2)
FROM film
GROUP BY rating
ORDER BY round;


SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
ORDER BY sum DESC
LIMIT 5
;

