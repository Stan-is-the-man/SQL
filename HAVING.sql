SELECT customer_id, SUM(amount) 
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 150

SELECT store_id, COUNT(customer_id)
FROM customer
GROUP BY store_id
HAVING COUNT(customer_id) > 274
;

SELECT customer_id, COUNT(amount)
FROM payment
GROUP BY customer_id
HAVING COUNT(amount) > 39
;

SELECT customer_id, SUM(amount)
FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) > 100
;


Solutions to Assessment Test 1

SELECT customer_id, SUM(amount)
FROM payment
WHERE staff_id = 2
GROUP BY customer_id
HAVING SUM(amount) >= 110
;

SELECT COUNT(title)
FROM film
WHERE title LIKE'J%'
;

SELECT first_name, last_name
FROM customer
WHERE first_name LIKE'E%' 
AND address_id < 500
ORDER BY customer_id DESC
LIMIT 1
;
