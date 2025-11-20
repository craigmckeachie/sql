use sakila;


-- SELECT column1, columns2, ...
-- FROM table1
-- INNER JOIN table2
-- ON table1.column-name = table2.column-name;

select  rental_id, rental_date, rental.customer_id, customer.customer_id, customer.first_name, customer.last_name 
from rental
inner join customer 
on rental.customer_id = customer.customer_id;


-- SELECT column1, columns2, ...
-- FROM table1
-- INNER JOIN table2
-- ON table1.column-name = table2.column-name;

-- all actors and films
select film_actor.actor_id, film_actor.film_id, 
	   actor.first_name, actor.last_name, 
       film.title, film.release_year
from film_actor

inner join actor
ON film_actor.actor_id = actor.actor_id

inner join film
ON film_actor.film_id = film.film_id;





