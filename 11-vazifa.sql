

-- 1 masala
SELECT 
    title 			     AS sarlavhasi,
	rental_rate 	     AS ijara_narxi,
	replacement_cost     AS almashtirish_narxini
FROM film 
ORDER BY rental_rate ASC,
	     title       ASC
LIMIT 10


-- 2 masala

SELECT 
	replacement_cost AS almashtirish_narxi,
	title            AS sarlavhasi
FROM film
WHERE    replacement_cost > 25
ORDER BY replacement_cost   DESC 

--3 masala

SELECT 
	title, 
	length
FROM film
WHERE    title   ILIKE 'A%'
ORDER BY length  DESC 
LIMIT 15

--4 masala

SELECT 
	title  AS sarlavha
FROM film
ORDER BY title ASC
OFFSET 20
LIMIT  20

--5 masala

SELECT 
	p.payment_id   AS tulov_id,
	p.amount       AS tulov,
	p.payment_date AS tolov_vaqti
FROM payment p 
WHERE p.amount > 5
ORDER  BY p.payment_date DESC 
LIMIT  10

--6 masala

SELECT 
	f.rental_rate  AS rate,
	f.title        AS film_title,
	f.length       AS duration_minutes
FROM film f 
WHERE f.length > 100
ORDER BY title   ASC 

--7 masala
SELECT 
	'Payment of $' 
	|| p.amount || ' on ' 
	|| p.payment_date    AS summary
FROM payment p 
ORDER BY p.payment_date  DESC 
LIMIT 10

--8 masala

SELECT 
	'Customer paid' 
	|| p.amount || ' on ' 
	|| p.payment_date    AS summary
FROM payment p 
WHERE p.amount > 8
ORDER BY p.payment_date DESC 
LIMIT 12

-- 9 masala
SELECT 
	p.payment_id   AS tolov_id,
	p.payment_date AS tolov_vaqti,
	p.amount       AS miqdori
FROM payment p 
ORDER BY p.payment_date DESC
LIMIT  10
OFFSET 20


--10 masla

SELECT 
	f.length           AS uzunligi,
	f.rental_rate      AS ijara_darajasi,
	f.replacement_cost AS alamshtirish_narxi
FROM  film f 
WHERE f.length > 120 AND f.rental_rate BETWEEN 2 AND 4
ORDER BY f.replacement_cost DESC 
LIMIT 7

--11 masala

SELECT 
	f.title            AS film_nomi,
	f.replacement_cost AS almashtirish_xarajati
FROM film f 
ORDER BY f.replacement_cost DESC 
LIMIT 3


--12 masala

SELECT 
	title   AS film_nomi
FROM film f 
LIMIT  10
OFFSET 30

--13 masala

SELECT 
	f.title       AS filim_nomi,
	f.length      AS film_uzunligi,
	f.rental_rate AS ijara_darajasi
FROM film f 
WHERE    f.length      > 140 AND 
	     f.rental_rate < 2
ORDER BY f.length DESC 

--14 masala

SELECT 
	'$' ||p.amount || ' paid' AS short_text
FROM payment p 
LIMIT 15

--15 masala

SELECT 
	f.title            AS film_nomi ,
	f.length           AS uzunligi,
	f.replacement_cost AS almashtirish_davri
FROM film f 
WHERE f.replacement_cost > 25 AND 
	  f.length           > 90
	  
--16 masala
	  
SELECT 
    f.title,
    f.length
FROM (
    SELECT 
    	title,
    	length
    FROM film
    ORDER BY length DESC
    LIMIT 20
) f
ORDER BY f.title ASC;



--16 masala

SELECT 
	f.title        AS film_nomi,
	f.rental_rate  AS ijara_narxi
FROM film f 
WHERE    f.rental_rate BETWEEN 1 AND 3
ORDER BY f.rental_rate ASC 


--17 masala

SELECT 
	title   AS movie_title,
	length  AS duration
FROM film 
WHERE    length > 120
ORDER BY length ASC 

--18 masala

SELECT 
	p.payment_id AS tolov_id,
	p.amount     AS miqdor
FROM payment p 
WHERE    p.amount > 7
ORDER BY p.payment_date DESC 
LIMIT 1

--19 masala

SELECT 
	'The '||f.title || 'is' ||f.length ||' minutes long' AS sentence
FROM film f 
WHERE f.length > 150

--20 masala

SELECT 
	title            AS film_nomi,
	replacement_cost AS almashtirish_xarajati
FROM film 
WHERE    replacement_cost BETWEEN 15 AND 20
ORDER BY replacement_cost ASC 
LIMIT 10


--21 masala

SELECT 
	f.title       AS film_nomi,
	f.rental_rate AS ijara_narxi,
	f.length      AS film_uzunligi
FROM  film f 
WHERE f.rental_rate < 2   AND 
	  f.length      < 80

--22 masala
	  
SELECT 
	'Paid on ' ||p.payment_date || ' amount $' ||p.amount AS summary 
FROM payment p 
ORDER BY summary DESC 
LIMIT 10

--22 masala

SELECT 
	title            AS film_nomi,
	replacement_cost AS almashtirish_xarajati
FROM film f 
ORDER BY f.replacement_cost DESC 
LIMIT 15


--23 masala

SELECT 
	title  AS film_nomi,
	length AS film_uzinligi 
FROM film 
WHERE    length BETWEEN 100 AND 130
ORDER BY length ASC 

--24 masala

SELECT 
	f.title            AS film_nomi,
	f.rental_rate      AS ijara_narxi,
	f.replacement_cost AS almashish_xarajati
FROM     film f 
WHERE    f.rental_rate      > 2.5 AND 
	     f.replacement_cost > 18
ORDER BY f.replacement_cost DESC 


--25 masala

SELECT 
	'Inception rental is $ ' ||f.rental_rate ||' last ' ||f.length  AS info
FROM film f 
WHERE f.length > 120

select 
       title
from film f 
order by title asc
limit  20
offset 20; 


--26 masala

SELECT 
	title   AS film_nomi,
	length  AS film_uz
FROM film
ORDER BY length ASC 
LIMIT 8


--27 masala

SELECT 
	p.payment_id   AS tolov_id,
	p.amount       AS miqdor,
	p.payment_date AS tolov_vaqti
FROM  payment p 
WHERE p.amount BETWEEN 3 AND 6
LIMIT 10


--28 masala

SELECT 
    p.payment_id, 
    SUM(p.amount) AS jami
FROM payment p 
GROUP BY p.payment_id;

--29 masala

SELECT 
    customer_id, 
    SUM(amount) AS jami_summa
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100;

--20 masala

SELECT 
    customer_id, 
    SUM(amount) AS jami_summa
FROM     payment
WHERE    staff_id    = 1  
GROUP BY customer_id 
HAVING   SUM(amount) > 200; 

SELECT 
    c.first_name, 
    c.last_name, 
    SUM(p.amount) AS jami_summa
FROM       customer c
INNER JOIN payment p ON   c.customer_id =  p.customer_id
GROUP BY   c.first_name,  c.last_name
HAVING     SUM(p.amount)  > 100
ORDER BY   jami_summa     DESC;

