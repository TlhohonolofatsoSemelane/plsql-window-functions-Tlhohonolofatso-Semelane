-- Create customers table
CREATE TABLE customers (
    customer_id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    region VARCHAR2(50)
);

-- Create products table
CREATE TABLE products (
    product_id NUMBER PRIMARY KEY,
    name VARCHAR2(100),
    category VARCHAR2(50)
);

-- Create transactions table
CREATE TABLE transactions (
    transaction_id NUMBER PRIMARY KEY,
    customer_id NUMBER,
    product_id NUMBER,
    sale_date DATE,
    amount NUMBER,
    CONSTRAINT fk_customer FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    CONSTRAINT fk_product FOREIGN KEY (product_id) REFERENCES products(product_id)
);
