use ecommerce_db;
INSERT INTO Customers (name, email, phone, address) VALUES
('John Doe', 'john@example.com', '9876543210', 'Chennai'),
('Pavithra A', 'pavi@example.com', '9876501234', 'Bangalore'),
('Priya Sharma', 'priya@example.com', '9876509876', 'Delhi'),
('Rahul Verma', 'rahul@example.com', '9123456780', 'Mumbai'),
('Sneha R', 'sneha@example.com', '9345678910', 'Hyderabad'),
('Arun Kumar', 'arun@example.com', '9567891230', 'Pune'),
('Kiran S', 'kiran@example.com', '9786543210', 'Kolkata'),
('Deepa M', 'deepa@example.com', '9678901234', 'Chennai'),
('Anjali T', 'anjali@example.com', '9765432109', 'Bangalore'),
('Vikram N', 'vikram@example.com', '9654321098', 'Delhi');

INSERT INTO Categories (category_name) VALUES
('Electronics'), ('Clothing'), ('Books'),
('Home Appliances'), ('Beauty & Health');

INSERT INTO Products (product_name, category_id, price, stock) VALUES
('Laptop', 1, 55000, 10),
('Smartphone', 1, 30000, 20),
('Headphones', 1, 2000, 50),
('T-shirt', 2, 500, 100),
('Jeans', 2, 1200, 60),
('Jacket', 2, 2500, 40),
('Novel', 3, 300, 80),
('Textbook', 3, 800, 50),
('Mixer Grinder', 4, 3500, 25),
('Air Conditioner', 4, 45000, 15),
('Lipstick', 5, 700, 60),
('Face Cream', 5, 1200, 40);

INSERT INTO Orders (customer_id, total_amount) VALUES
(1, 55300), (2, 1700), (3, 30800), (4, 2500), (5, 4800),
(6, 56000), (7, 700), (8, 46200), (9, 6200), (10, 800);

INSERT INTO Order_Items (order_id, product_id, quantity, price) VALUES
(1, 1, 1, 55000), (1, 7, 1, 300),
(2, 4, 2, 500), (2, 5, 1, 1200),
(3, 2, 1, 30000), (3, 8, 1, 800),
(4, 6, 1, 2500),
(5, 9, 1, 3500), (5, 11, 2, 700),
(6, 1, 1, 55000), (6, 11, 1, 700), (6, 12, 1, 1200),
(7, 11, 1, 700),
(8, 10, 1, 45000), (8, 12, 1, 1200),
(9, 4, 4, 500), (9, 5, 1, 1200),
(10, 7, 2, 300), (10, 8, 1, 800);

INSERT INTO Payments (order_id, amount, payment_method) VALUES
(1, 55300, 'Credit Card'),
(2, 1700, 'Cash'),
(3, 30800, 'UPI'),
(4, 2500, 'Debit Card'),
(5, 4800, 'Net Banking'),
(6, 56000, 'Credit Card'),
(7, 700, 'Cash'),
(8, 46200, 'UPI'),
(9, 6200, 'Debit Card'),
(10, 800, 'Cash');

select * from Order_Items;
