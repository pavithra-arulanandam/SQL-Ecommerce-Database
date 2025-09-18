use ecommerce_db;

-- adding the new column in orders table
alter table orders add column status varchar(50);

-- set default value as pending in the orders table
alter table orders modify status varchar(50) default ' pending';

-- displaying the orders table before updating
select * from orders;

-- updating the status column as pending 
SET SQL_SAFE_UPDATES = 0;

UPDATE orders
SET status = 'Pending'
WHERE status IS NULL;

SET SQL_SAFE_UPDATES = 1;

-- again displaying the orders table after updates
select * from orders;

-- deleting a row in orders table
SET FOREIGN_KEY_CHECKS = 0;
DELETE FROM orders WHERE order_id = 10;
SET FOREIGN_KEY_CHECKS = 1;

-- subquery(finding customers who spent more than avg order amount)
SELECT c.customer_id, c.name, o.total_amount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE o.total_amount > (
    SELECT AVG(total_amount) 
    FROM orders
);

-- if want detele the entire table or schema
drop table orders;
drop database ecommerce_db;
 




