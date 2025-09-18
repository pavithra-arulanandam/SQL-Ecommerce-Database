use ecommerce_db;

-- listing the customers
select * from Customers;

-- showing all the products with  the category name
SELECT p.product_name, c.category_name, p.price, p.stock
FROM Products p
JOIN Categories c ON p.category_id = c.category_id;

-- total number of orders
SELECT COUNT(*) AS total_orders FROM Orders;

-- finding top 3 most expensive products
SELECT product_name, price FROM Products ORDER BY price DESC LIMIT 3;

-- finding total sales(sum of all payments)
SELECT SUM(amount) AS total_sales FROM Payments; 

-- finding best selling product(by quantity)
SELECT p.product_name, SUM(oi.quantity) AS total_sold
FROM Order_Items oi
JOIN Products p ON oi.product_id = p.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC LIMIT 1; 

-- showcasing all orders with customer name
SELECT o.order_id, c.name, o.total_amount, o.order_date
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id;

-- finding the total spending of each customer
SELECT c.name, SUM(o.total_amount) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC;

-- payment method distribution
SELECT payment_method, COUNT(*) AS total_transactions
FROM Payments
GROUP BY payment_method;

-- category-wise sales revenue
SELECT cat.category_name, SUM(oi.price * oi.quantity) AS revenue
FROM Order_Items oi
JOIN Products p ON oi.product_id = p.product_id
JOIN Categories cat ON p.category_id = cat.category_id
GROUP BY cat.category_name
ORDER BY revenue DESC;


