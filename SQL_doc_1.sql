--#1 Query for how many actors there are with the last name ‘Wahlberg’
select last_name
from actor
where last_name like 'Wahlberg';

--#2 Query for how many payments made between $3.99 and $5.99
select COUNT(amount)
from payment
where amount > 3.99 and amount < 5.99;

--#3 Query for which film the store has the most of (inventory search)
select film_id, COUNT(film_id)
from inventory
group by film_id
order by COUNT(film_id) desc;

--#4 Query for how many customers have the last name ‘William’
select first_name, last_name
from customer
where last_name like 'William';

--#5 Query for which store employee_id sold the most rentals
select staff_id, COUNT(rental_id)
from rental
group by staff_id
order by COUNT(rental_id) desc;

--#6 Query for how many different district names there are
select COUNT(district) from address;

--#7 Query for which film has the most actors in it (film_actor table and get film_id)
select COUNT(actor_id), film_id
from film_actor
group by film_id
order by COUNT(actor_id) desc;

--#8 Query for how many customers have a last name ending with 'es' in store_id 1 (use customer table)
select COUNT(last_name) as ending_with_es, store_id
from customer
where last_name like '%es' and store_id = '1'
group by store_id;

--#9 Query to display how many payment amounts had a number of rentals above 250 for customers with ids
--between 380 and 430 (use GROUP BY and having > 250)
select amount, COUNT(rental_id), customer_id
from payment
where customer_id between 380 and 430
group by amount, customer_id
having COUNT(rental_id) > 250;

--#10 Query to display how many rating categories there are and which rating has the most movies (within film table)
select rating as rating_categories, COUNT(film_id) as number_of_films
from film
group by rating
order by COUNT(film_id) desc;
