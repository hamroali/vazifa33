--1 masala
--select first_name, last_name
--from actor

--2-  masala
--select * from customer

--3 masala
--select customer_id as mijoz_id, 
--	   store_id as dokon_id, 
--	   last_name as ismi, 
--	   email as elektron_pochta, 
--	   address_id as manzil_id, 
--	   activebool as faollik,
--	   create_date as yaratilgan_malumot,
--	   last_update as yangilangan_sana,
--	   active as faol
--from customer c 

--4-masala
--select 
--	first_name ||' '|| last_name as full_name
--from customer c 
--
--5 masala
--select 
--	title as filim_nomi, 
--	replacement_cost as ijaraga_narxi
--from film f 

--6 masala
--select 
--	first_name as mijoz_ismi,
--	create_date as royxatdan_otgan_sana
--from customer c 

--7 masala
--select 
--	customer_id,
--	first_name,
--	activebool
--from customer c 


--select 
--	first_name ||''|| last_name as Aktyor_ismi
--from actor


--select 
--	first_name as ism,
--	last_name as familyasi
--from actor


--SELECT 
  --  UPPER(first_name)
--FROM actor;

--select 
--	actor_id ||''|| a.last_name as nom
--from actor a


--select
--	f.description 
--from film f 


--select 
--	rental_duration as ijara_muddati_kun
--from film f 

--select 
--	title as nomi,
--	rating as reyting
--from film f 

--select 
--	f.replacement_cost  as tiklash_narxi
--from film f 


--select 
--	title as nomi,
--	release_year as ommaga_chiqqan_yili
--from film f 

--select 
--	email as elekton_pochta
--from customer c 

--SELECT 
--    first_name || '.' || last_name || '@sakilacustomer.org' AS email
--FROM customer;

--select 
--	active as holat
--from customer c 


--select 
--	customer_id ||' '|| first_name  as mijoz_malumoti 
--from customer c

--SELECT 
--    LEFT(first_name || last_name, 12) AS full_name
--FROM customer;

--select 
--	c.first_name as mijoz_ismi,
--	c.create_date as royxatdan_otgan_sana
--from customer c 


-- 1 masala
--select 
--	first_name,
--	last_name
--from customer c 


--2 masala
--
--select *
--from customer c 

--3 masala

--select 
--	c.customer_id  as mijoz_id,
--	store_id as dokon_id,
--	first_name as ismi,
--	c.last_name as familyasi,
--	email as elektron_pochta,
--	address_id as manzil_id,
--	activebool as faol_bool,
--	create_date as yaratilgan_vaqt,
--	last_update as oxirgi_kirilgan_vaqt,
--	active as faollik
--from customer c 


-- 4 masala
--select 
--	first_name || ' ' || last_name as full_name
--from customer

--5 masala
--select 
--	f.title as nomi,
--	f.rental_rate as narxi
--from film f 

-- 6 masala

--select 
--	c.first_name as ismi,
--	c.create_date as ruyxatdan_otgan_sana
--from customer c 

select 
	c.customer_id,
	c.first_name,
	active
from customer "











