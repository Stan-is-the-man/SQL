Sub-query with only one result:
SELECT title, length
FROM film
WHERE length > (SELECT AVG(length) FROM film)
ORDER BY title;

Sub-query with miltiple result:
SELECT film_id, title
FROM film
WHERE film_id IN 
(SELECT inventory.film_id
FROM rental
JOIN inventory ON inventory.inventory_id = rental.inventory_id
WHERE return_date BETWEEN '2005-05-28' AND '2005-05-29');

SELECT title, film_id, replacement_cost
FROM film
WHERE film_id IN
(SELECT inventory.film_id
FROM film
JOIN inventory 
ON film.film_id = inventory.film_id
WHERE replacement_cost
BETWEEN 14.99 AND 19.99)
ORDER BY replacement_cost;

SELECT amount
FROM payment
WHERE amount >
(SELECT AVG(amount)
FROM payment);

SELECT title, rental_rate
FROM film
WHERE rental_rate >
(SELECT AVG(rental_rate)
FROM film);

SELECT first_name, last_name
FROM employees
WHERE salary >
(SELECT salary
FROM employee
WHERE employee_id = 163)

SELECT payment_id, amount
FROM payment
WHERE amount = 
(SELECT MIN(amount)
FROM payment);

SELECT title
FROM film
WHERE rental_rate 
BETWEEN (SELECT MIN(rental_rate)
 		FROM film)
 AND 2.99
