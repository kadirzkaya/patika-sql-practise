1
SELECT country FROM country
where country LIKE 'A%a'

2
SELECT country FROM country
where country LIKE '_____%n'

3
SELECT title FROM film
where title ILIKE '%t%t%t%t%'

4
SELECT * FROM film
where title LIKE 'C%'
AND length >90
AND rental_rate=2.99