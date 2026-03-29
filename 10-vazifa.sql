--1 masala

SELECT 
	p.customer_id,
	p.staff_id,
	p.payment_date::date
FROM payment p 
WHERE p.payment_date BETWEEN  '2007-03-01' AND '2007-03-03'


-- 2 masla 

SELECT 
    title, 
    rental_rate,
    replacement_cost,
    replacement_cost * 1.3 AS total_cost
FROM film
WHERE rental_rate < 3
ORDER BY total_cost DESC;



--3 masala

SELECT 
	c.first_name,
	c.last_update 
FROM     customer c
WHERE    c.last_update BETWEEN '2005-06-01' AND '2005-07-01'
ORDER BY first_name    ASC 
LIMIT 10

--4 masala

SELECT 
	f.title,
	f.rental_rate      * 50 AS 
	profit
FROM     film f  
WHERE    f.rental_rate * 50 > 100
ORDER BY profit DESC
LIMIT 11

-- 5 masala

SELECT 
	p.payment_id,
	p.amount,
	p.amount * 1.10 AS total_with_tax
FROM payment p
WHERE p.amount > 5
ORDER BY total_with_tax DESC 
LIMIT 100


--6 masala

SELECT 
	c.last_name ||','|| c.first_name AS name_tag
FROM     customer c 
WHERE    c.last_name ILIKE 'B%'
ORDER BY c.first_name ASC 
LIMIT  11
OFFSET 44

--7 masala

SELECT 
	f.title,
	f.title|| '- $' || f.rental_rate  AS full_info,
	f.rental_rate,
	f.rental_rate * 1.15 AS oshgan_narx
FROM     film f 
WHERE    f.rental_rate >= 4.0
ORDER BY f.title 


-- 8 masala

SELECT 
	title,
	rental_rate,
	rental_rate * 24 AS total
FROM film
ORDER BY total DESC

--9 masala

SELECT 
	f.title ,
	f.rental_rate,
	f.rental_rate * 0.85 AS discountend_prise 
FROM     film f 
WHERE    f.rental_rate * 0.85 >= 2
ORDER BY discountend_prise ASC 

-- 10 masala

SELECT 
	film_id,
	title ,
	rental_rate,
	replacement_cost,
	rental_rate / replacement_cost AS profit_radio
FROM     film 
ORDER BY profit_radio DESC 
LIMIT  10

--12 masala

SELECT 
	title,
	rental_rate,
	replacement_cost ,
	rental_rate * 40 AS totaal_inocome
FROM     film 
WHERE    rental_rate < 4
ORDER BY totaal_inocome DESC 


--13 masala


SELECT DISTINCT 
	c.first_name 
FROM customer c 
WHERE    c.create_date BETWEEN '2006-12-01' AND '2006-12-06'
ORDER BY c.first_name  DESC 
LIMIT 15

--14 masala

SELECT 
	title,
	rental_rate,
	(rental_rate - 2) * 50 AS profit
FROM film
WHERE (rental_rate - 2) * 50 > 140
ORDER BY profit DESC 
LIMIT 10

-- 15 masala

SELECT 
	p.payment_id,
	p.amount,
	p.amount * 1.12 AS total_with_tax
FROM  payment p 
WHERE p.amount > 8
ORDER BY total_with_tax DESC 
LIMIT 50

--16 masala

SELECT 
	c.last_name ||','|| c.first_name AS tag_name
FROM     customer c 
WHERE    c.last_name ILIKE 'C%'
ORDER BY c.first_name ASC 


--17 masala

SELECT 
	f.title ||' - $'|| f.rental_rate  AS full_info,
	f.rental_rate,
	f.rental_rate * 1.10 AS incrasead_read
FROM     film f 
WHERE    f.rental_rate >= 3.5
ORDER BY f.title 

--18- masala

SELECT 
	f.title,
	f.rental_rate ,
	f.rental_rate * 36 AS total_profit
FROM     film f 
WHERE    f.rental_rate * 36 > 108
ORDER BY total_profit ASC  

--19 masala

SELECT 
	f.title,
	f.rental_rate,
	f.rental_rate * 0.8 AS discounted_price
FROM     film f 
WHERE    f.rental_rate > 2
ORDER BY discounted_price ASC 


--20 masala

SELECT 
	title,
	replacement_cost,
	rental_rate,
	replacement_cost / rental_rate AS profit_radio
FROM     film 
ORDER BY profit_radio DESC 
LIMIT 10

--21 masala

SELECT
	staff_id,
	count(DISTINCT customer_id ) AS total_customers
FROM     payment 
WHERE    payment_date BETWEEN '2007-08-01' AND '2007-08-31'
GROUP BY staff_id 
ORDER BY total_customers  DESC 
LIMIT 1


--21 masala

SELECT
	f.title,
	f.rental_rate,
	f.rental_rate * 1.20 AS oshgan_narxlar
FROM     film f 
WHERE    f.rental_rate < 3
ORDER BY oshgan_narxlar DESC 

--22 masala

SELECT 
	p.payment_id,
	p.amount,
	p.amount * 1.15 AS soliq,
	p.payment_date 
FROM     payment p
WHERE    p.payment_date BETWEEN '2007-02-01' AND '2007-02-15'
ORDER BY soliq DESC 

--23 masala

SELECT 
	title,
	rating,
	rental_rate 
FROM     film 
WHERE    rating = 'PG-13'
ORDER BY title ASC 

--24 masala

SELECT 
	  c.first_name ||' '|| c.last_name  AS toliq_ism
FROM  customer c 
WHERE c.last_name ILIKE 'K%'
LIMIT  10 
OFFSET 10

--25 masala

SELECT 
	title,
	rental_rate,
	rental_rate * 0.10 AS chegirma_narx
FROM     film 
WHERE    rental_rate > 2
ORDER BY chegirma_narx DESC 

--26 masala

SELECT 
	c.first_name ||' ' || c.last_name  AS toliq_ismi,
	c.email 
FROM     customer c
WHERE    c.last_name ILIKE 'S%'
ORDER BY toliq_ismi ASC 
LIMIT 15


--27 masala

SELECT 
	title ||' - ' ||f.length || ' min' 
FROM     film f
WHERE    f.length >100
ORDER BY f.length DESC 

--28 masala

SELECT 
	p.payment_id,
	p.amount ,
	p.amount * 2 AS kopaygan_qiymat
FROM  payment p 
WHERE p.amount > 6

--29 masala

SELECT 
	f.title ,
	f.rental_rate,
	f.rental_rate * 1.15 AS yangi_narx
FROM      film f 
ORDER BY  f.title  ASC 

--30 masala

SELECT DISTINCT 
	c.first_name,
	c.last_name,
	c.create_date
FROM customer c 
WHERE    c.create_date BETWEEN '2007-01-01' AND '2007-02-01'
ORDER BY first_name ASC 
LIMIT 30

--31 masala

SELECT 
	f.title,
	f.replacement_cost,
	f.replacement_cost * 0.25 AS chegirma_narx
FROM film f 
WHERE f.replacement_cost > 25
ORDER BY chegirma_narx DESC 


--32 masala

SELECT 
	title ||'- $ '||rental_rate 
FROM film
WHERE rental_rate > 2.5
ORDER BY title 


--33 masala

SELECT 
	title ,
	rental_rate ,
	rental_rate * 16 AS taxminiy_daromad
FROM film 

--34 masala

SELECT 
	c.first_name ||' '|| c.last_name  AS toliq_ism,
	
FROM customer c 


SELECT 
	title,
	description 
FROM film 



SELECT 
	c.first_name,
	c.last_name 
FROM customer AS  c 


SELECT *
FROM customer c 



SELECT 
	c.customer_id AS mijoz_id,
	c.store_id    AS dokon_id,
	c.first_name  AS ismi,
	c.last_name   AS familyasi,
	c.email       AS elektron_pochta,
	c.address_id  AS manzil_id,
	c.activebool  AS faollik,
	c.create_date AS yaratilgan_vaqt,
	c.last_update AS oxirgai_yangilanish,
	c.active      AS faollik
FROM customer c 

SELECT 
	c.first_name ||' ' || c.last_name AS full_name
FROM customer c 


SELECT 
	f.title       AS film_nomi,
	f.rental_rate AS ijara_narxi
FROM film f 


SELECT 
	c.first_name ||' ' || c.last_name AS full_name,
	c.create_date 
FROM customer c 


SELECT 
	c.customer_id ,
	c.first_name ||' ' || c.last_name AS full_name,
	c.active 
FROM customer c 


SELECT 
	c.customer_id,
	c.first_name 
FROM customer c 
WHERE (c.first_name ILIKE 'A%' OR c.first_name ILIKE 'B%') AND c.customer_id > 300


--	To'lov summasi 5 dan katta bo'lgan, staff_id 1 bo'lmagan va 2005-yil 1-iyundan keyin 
--     amalga oshirilgan to'lovlarni ko'rsating.


SELECT 
	p.amount,
	p.staff_id,
	p.payment_date 
FROM payment p 
WHERE p.amount > 5 AND p.staff_id != 1 AND p.payment_date > '2005-06-01'


SELECT 
	r.return_date,
	r.inventory_id 
FROM rental r 
WHERE (r.rental_date IS NULL OR r.rental_date > '2005-06-01') AND r.inventory_id BETWEEN 100 AND 200


SELECT 
	p.amount,
	p.payment_date 
FROM payment p 
WHERE (p.amount < 1 OR p.amount > 10)  AND p.payment_date < '2005-07-01'


SELECT 
	c.first_name
FROM customer c 
WHERE c.first_name LIKE '%er%' AND  c.first_name NOT  ILIKE   'b%' 


SELECT 
	c.customer_id,
	c.first_name ||' ' || c.last_name AS full_name,
	c.address_id
FROM customer c
WHERE c.customer_id > 100 AND c.customer_id < 150 OR c.last_name LIKE '%son' AND c.address_id != 5


SELECT 
	p.staff_id,
	p.amount 
FROM payment p 
WHERE p.staff_id NOT  IN  (1,2) AND p.amount != 0.99


SELECT 
	r.return_date ,
	r.staff_id 
FROM rental r 
WHERE r.return_date Is  NOT NULL AND r.staff_id = 1

SELECT 
	c.customer_id ,
	c.first_name ,
	c.store_id 
FROM customer c 
WHERE (c.first_name ILIKE 'A%' OR c.customer_id > 500) AND c.store_id != 1


SELECT 
	c.customer_id,
	c.first_name ||' ' || c.last_name AS full_name
FROM customer c 
WHERE c.customer_id < 200 AND (c.last_name LIKE '%s%' OR c.first_name ILIKE '%y')



--------------------------------------------------------------------------------

SELECT 
	title ,
	rental_rate ,
	replacement_cost 
FROM film 
ORDER BY title  ASC,  rental_rate ASC
LIMIT 10


SELECT 
	title ,
	replacement_cost 
FROM film 
WHERE replacement_cost > 25
ORDER BY replacement_cost DESC 


SELECT 
	title,
	length 
FROM film 
WHERE title ILIKE 'A%'
ORDER BY length DESC 
LIMIT 15

SELECT 
	title
FROM film
LIMIT 20
OFFSET 20



SELECT 
	p.payment_id,
	p.amount ,
	p.payment_date 
FROM payment p 
WHERE p.amount > 5
ORDER BY p.payment_date DESC
LIMIT 10


SELECT 
 title AS film_title,
 rental_rate AS rate,
 length AS duration_minutes
FROM film f 
WHERE length > 100
ORDER BY title ASC 

SELECT 
	'Atxamxoja ' ||p.amount || ' on ' || p.payment_date::date  AS summary
FROM payment p 
ORDER BY p.payment_date DESC 
LIMIT 10

