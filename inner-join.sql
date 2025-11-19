use sakila;


SELECT 
    customer_id,
    first_name,
    last_name,
    customer.address_id AS customer_address_id,
    address.address_id AS address_address_id,
    address,
    postal_code,
    city_id
FROM
    customer
	INNER JOIN address ON customer.address_id = address.address_id;








