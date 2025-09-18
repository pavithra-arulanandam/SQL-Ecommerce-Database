# SQL-Ecommerce-Database
SQL-based E-commerce Database project showcasing database design, queries, and operations using MySQL.
🛒 E-commerce SQL Database Project

📌 Project Overview

This project is a mini E-commerce Database Management System built using MySQL.
It demonstrates the process of creating and managing a relational database for an e-commerce business.

The project covers:

Designing database schema
Creating tables with relationships (Primary & Foreign Keys)
Inserting sample records
Running SQL queries (SELECT, JOIN, GROUP BY, Subqueries, Aggregates)
Performing Update, Delete, and Alter operations
Capturing outputs for reference

This project showcases SQL skills useful for real-world applications.

🏗️ Database Design

The database is named ecommerce_db and consists of 6 tables:

Customers – Stores customer details
Products – Stores product details (name, category, price, stock)
Orders – Stores order details (date, total amount, status)
Order_Items – Stores items in each order (product, quantity, price per unit)
Payments – Stores payment details for orders
categories- Stores category id and name of the category

Entity-Relationship Flow

A Customer can place multiple Orders
Each Order can include multiple Products (via Order_Items)
Each Order has one Payment record

📂 Files in This Repository

create_tables_and_schemas.sql → Queries to create all tables
insertion_of_records.sql → Queries to insert sample data
query_to_be_performed.sql → SQL queries (select, join, group by, subqueries, aggregates)
delete_and_update_operations.sql → Update, Delete, and Alter queries
output_queries.txt → Query outputs/results

README.md → Project documentation (this file)

📝 SQL Operations Performed
🔹 Table Creation
CREATE TABLE Customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(15)
);

🔹 Insert Data
INSERT INTO Customers (name, email, phone) VALUES
('Rahul Sharma', 'rahul@gmail.com', '9876543210'),
('Priya Iyer', 'priya@gmail.com', '9876543211'),
('Amit Verma', 'amit@gmail.com', '9876543212');

🔹 Select Queries
-- Get all customers
SELECT * FROM Customers;

-- Get total sales per customer
SELECT c.name, SUM(p.amount) AS total_spent
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
JOIN Payments p ON o.order_id = p.order_id
GROUP BY c.name;

🔹 Update Queries
-- Update phone number of a customer
UPDATE Customers
SET phone = '9998887776'
WHERE customer_id = 1;

-- Update status column with default Pending
UPDATE Orders
SET status = 'Pending'
WHERE status IS NULL;

🔹 Delete Query
-- Delete a product from Products table
DELETE FROM Products
WHERE product_id = 5;

🔹 Alter Table
-- Add a status column to Orders
ALTER TABLE Orders ADD COLUMN status VARCHAR(50) DEFAULT 'Pending';

🔹 Subquery Example
-- Find customers who placed orders above ₹10,000
SELECT name 
FROM Customers 
WHERE customer_id IN (
    SELECT customer_id 
    FROM Orders 
    WHERE total_amount > 10000
);

📊 Sample Outputs
Customer Name	  Total Spent

Rahul Sharma	  55,300.00
Priya Iyer	    17,000.00
Amit Verma	    30,800.00
Sneha Patel	    25,000.00

(More outputs are included in output related txt files.)

🚀 How to Run the Project

Install MySQL and open MySQL Workbench.

Create a database:

CREATE DATABASE ecommerce_db;
USE ecommerce_db;
Run creation_of_tables_and_schemas.sql to create tables.
Run insertion_of_records.sql to insert sample records.
Execute queries from query_to_be_performed.sql and delete_and_update_operations.sql.
Check outputs in output related txt files included in this project files

🎯 Skills Demonstrated

Database schema design
Writing SQL queries (CRUD operations)
Joins, Group By, Aggregates
Subqueries and Nested Queries
Altering tables and handling constraints
Performing Update and Delete operations

📌 Conclusion

This project is a practical demonstration of SQL skills using an E-commerce use case.
It highlights the ability to:
Build relational databases
Manage and analyze data efficiently
Perform real-world business queries
Such skills are highly valuable for placements and industry-level database management projects.
