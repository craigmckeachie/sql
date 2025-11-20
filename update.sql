use sakila;

UPDATE customer
SET first_name = 'PATTY', last_name = 'JOHNSTON'
WHERE customer_id = 2;



select * 
from customer
WHERE first_name = 'PATTY';


SET SQL_SAFE_UPDATES=0;

UPDATE customer
SET first_name = 'PATRICE'
WHERE first_name = 'PATTY';

SET SQL_SAFE_UPDATES=1;