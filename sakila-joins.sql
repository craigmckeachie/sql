use sakila;


-- SELECT column1, columns2, ...
-- FROM table1
-- INNER JOIN table2
-- ON table1.column-name = table2.column-name;

select  rental_date, rental.customer_id, customer.customer_id, customer.first_name, customer.last_name, rental_id
from rental
inner join customer 
on rental.customer_id = customer.customer_id;

