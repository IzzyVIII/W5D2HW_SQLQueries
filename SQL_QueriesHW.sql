--1. How many actors are there with the last name ‘Wahlberg’?
select first_name, last_name 
from actor
where last_name = 'Wahlberg';

--2. How many payments were made between $3.99 and $5.99?
select customer_id, rental_id, amount, payment_id 
from payment
where amount >=3.99 
and amount <= 5.99
order by amount;

--3. What film does the store have the most of? (search in inventory)
select film_id, count (*) as total_films
from inventory
group by film_id
order by total_films desc 
limit 1;

--4. How many customers have the last name ‘William’?
select first_name, last_name 
from customer
where last_name = 'William';

--5. What store employee (get the id) sold the most rentals?
select staff_id, COUNT(*)
from rental
group by staff_id;

--6. How many different district names are there?
select distinct district
from address;

--7. What film has the most actors in it? (use film_actor table and get film_id)

--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
select store_id, last_name 
from customer
where store_id = '1' 
and last_name like '%es';

--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--   with ids between 380 and 430? (use group by and having > 250)
select amount
use count
Use between and





--10. Within the film table, how many rating categories are there? And what rating has the most
--    movies total?
select rating, count(*)
from film
group by rating
order by count(*) desc;