Sub-query with only one result:
SELECT title, length
FROM film
WHERE length > (SELECT AVG(length) FROM film)
ORDER BY title

Sub-query with miltiple result:
SELECT film_id, title
FROM film
WHERE film_id IN 
(SELECT inventory.film_id
FROM rental
JOIN inventory ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '2005-05-28' AND '2005-05-29')

SELECT amount
FROM payment
WHERE amount >
(SELECT AVG(amount)
FROM payment)

SELECT title, rental_rate
FROM film
WHERE rental_rate >
(SELECT AVG(rental_rate)
FROM film)


