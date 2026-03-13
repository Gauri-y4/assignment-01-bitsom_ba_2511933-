-- Schema design for normalized database
-- Customers Table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL);

-- Products Table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) NOT NULL);

-- Sales Representatives Table
CREATE TABLE sales_representatives (
    rep_id INT PRIMARY KEY,
    rep_name VARCHAR(100) NOT NULL);

-- Orders Table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    rep_id INT NOT NULL,
    order_date DATE NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (rep_id) REFERENCES sales_representatives(rep_id));

-- Order Items Table
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    product_id INT NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id));

-- Insert Customers
INSERT INTO customers VALUES
(1,'Rahul Sharma','Mumbai'),
(2,'Priya Mehta','Delhi'),
(3,'Amit Shah','Mumbai'),
(4,'Sneha Kapoor','Bangalore'),
(5,'Rohit Verma','Pune');

-- Insert Products
INSERT INTO products VALUES
(1,'Laptop',55000),
(2,'Headphones',2000),
(3,'Smartphone',30000),
(4,'Keyboard',1500),
(5,'Mouse',800);

-- Insert Sales Representatives
INSERT INTO sales_representatives VALUES
(1,'Arjun Singh'),
(2,'Neha Patel'),
(3,'Karan Gupta'),
(4,'Meera Nair'),
(5,'Ravi Kumar');

-- Insert Orders
INSERT INTO orders VALUES
(1,1,1,'2024-01-10'),
(2,2,2,'2024-01-11'),
(3,3,3,'2024-01-12'),
(4,4,4,'2024-01-13'),
(5,5,5,'2024-01-14');

-- Insert Order Items
INSERT INTO order_items VALUES
(1,1,1,1),
(2,1,2,2),
(3,2,3,1),
(4,3,4,3),
(5,4,5,2);
