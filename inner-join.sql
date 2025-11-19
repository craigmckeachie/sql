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


-- 1. List the product id, product name, unit price and category name of all
-- products. Order by category name and within that, by product name. 

use northwind;

select productid, productname, unitprice, categoryname -- , products.categoryid as products_category_id, categories.categoryid as categories_category_id
from products
inner join categories on products.categoryid = categories.categoryid
order by categoryname, productname;







