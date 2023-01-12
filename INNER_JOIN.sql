SELECT * 
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id
;

SELECT payment.customer_id, payment_date, first_name, last_name, email
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id
;
