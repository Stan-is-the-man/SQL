SELECT * 
FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id

;
