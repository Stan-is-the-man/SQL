SELECT film.film_id, title, inventory_id, store_id
FROM film
LEFT JOIN inventory
ON film.film_id = inventory.film_id
;

Or all movies that the DVD store does not have:
SELECT film.film_id, title, inventory_id, store_id
FROM film
LEFT JOIN inventory
ON film.film_id = inventory.film_id
WHERE inventory.film_id IS null
;

Challenge answers:
SELECT district, email
FROM address
INNER JOIN customer
ON address.address_id = customer.address_id
WHERE district ='California'
;
