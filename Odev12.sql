1
SELECT COUNT(*) FROM FILM
WHERE FILM.length>(SELECT AVG(length) FROM FILM);

2
SELECT COUNT(*) FROM FILM
WHERE FILM.rental_rate=(SELECT MAX(rental_rate) FROM FILM);

3
SELECT * FROM FILM
WHERE FILM.rental_rate=(SELECT MIN(rental_rate) FROM FILM)
AND FILM.replacement_cost=(SELECT MIN(replacement_cost) FROM FILM)
ORDER BY FILM.title;

4
select payment.customer_id, count(*) as Alısveris_sayisi,(SELECT first_name FROM customer WHERE payment.customer_id=customer.customer_id),
(SELECT last_name FROM customer WHERE payment.customer_id=customer.customer_id)
from payment
group by payment.customer_id
order by count(*) DESC;