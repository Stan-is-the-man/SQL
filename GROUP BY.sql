SELECT rating,ROUND(AVG(replacement_cost),2)
FROM film
GROUP BY rating
ORDER BY round
;




SELECT rental_rate,ROUND(AVG(replacement_cost),2)
FROM film
GROUP BY rental_rate
ORDER BY rental_rate


;
