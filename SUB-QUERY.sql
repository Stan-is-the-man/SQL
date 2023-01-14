SELECT title, length
FROM film
WHERE length > (SELECT ROUND(AVG(length),2) FROM film)
ORDER BY title


