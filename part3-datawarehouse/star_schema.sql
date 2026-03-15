-- Dimension Table: Date
CREATE TABLE dim_date (
    date_id INT PRIMARY KEY,
    full_date DATE,
    month INT,
    year INT
);

-- Dimension Table: Store
CREATE TABLE dim_store (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(100),
    store_city VARCHAR(100)
);

-- Dimension Table: Product
CREATE TABLE dim_product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50)
);

-- Fact Table
CREATE TABLE fact_sales (
    sales_id INT PRIMARY KEY,
    date_id INT,
    store_id INT,
    product_id INT,
    units_sold INT,
    unit_price DECIMAL(10,2),
    total_revenue DECIMAL(12,2),

    FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
    FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
    FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

-- Insert sample dates
INSERT INTO dim_date VALUES
(1,'2023-01-10',1,2023),
(2,'2023-02-05',2,2023),
(3,'2023-03-15',3,2023),
(4,'2023-04-20',4,2023),
(5,'2023-05-12',5,2023);

-- Insert stores
INSERT INTO dim_store VALUES
(1,'Chennai Anna','Chennai'),
(2,'Bangalore MG','Bangalore'),
(3,'Delhi South','Delhi'),
(4,'Mumbai Central','Mumbai'),
(5,'Pune FC Road','Pune');

-- Insert products
INSERT INTO dim_product VALUES
(1,'Phone','Electronics'),
(2,'Laptop','Electronics'),
(3,'Jeans','Clothing'),
(4,'Rice 5kg','Grocery'),
(5,'Milk 1L','Groceries');

-- Insert fact table data (10 rows)
INSERT INTO fact_sales VALUES
(1,1,1,1,10,48703.39,487033.90),
(2,2,2,2,8,42343.15,338745.20),
(3,3,3,3,15,2317.47,34762.05),
(4,4,4,4,12,52195.05,626340.60),
(5,5,5,5,9,43374.39,390369.51),
(6,1,2,1,7,48703.39,340923.73),
(7,2,3,2,6,42343.15,254058.90),
(8,3,4,3,11,2317.47,25492.17),
(9,4,5,4,5,52195.05,260975.25),
(10,5,1,5,4,43374.39,173497.56);
