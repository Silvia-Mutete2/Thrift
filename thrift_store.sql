
-- thrift_store.sql with seed data
CREATE DATABASE IF NOT EXISTS ThriftStore;
USE ThriftStore;

DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS products;

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    phone VARCHAR(20)
);

CREATE TABLE products (
    product_id INT AUTO_INCREMENT PRIMARY KEY,
    sku VARCHAR(50) NOT NULL UNIQUE,
    name VARCHAR(255) NOT NULL,
    description TEXT,
    price DECIMAL(10,2) NOT NULL
);

-- Seed data
INSERT INTO customers (first_name, last_name, email, phone) VALUES
('Alice', 'Mwangi', 'alice@example.com', '0712345678'),
('Brian', 'Otieno', 'brian@example.com', '0723456789'),
('Clara', 'Njeri', 'clara@example.com', '0734567890');

INSERT INTO products (sku, name, description, price) VALUES
('SKU001', 'Vintage Shirt', 'Blue cotton shirt in good condition', 12.50),
('SKU002', 'Kids Sneakers', 'White sneakers size 35', 20.00),
('SKU003', 'Women Handbag', 'Leather handbag - brown', 15.75);
