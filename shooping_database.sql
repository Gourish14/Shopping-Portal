create schema onlineshopping;
use onlineshopping;
drop schema onlineshopping;
CREATE TABLE Category (
    category_Id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255)
);

-- Create the 'Product' table
CREATE TABLE Product (
    product_Id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    description VARCHAR(255),
    price FLOAT ,
    image VARCHAR(255),
    category_Id INT,
    CONSTRAINT fk_product_category_id FOREIGN KEY (category_Id) REFERENCES Category(category_Id) ON DELETE CASCADE
);

-- Create the 'Customer' table
CREATE TABLE Customer (
    customer_Id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) ,
    email VARCHAR(255) ,
    phone_number VARCHAR(20),
    address VARCHAR(255)
);

-- Create the 'User' table
CREATE TABLE User (
    user_Id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) ,
    password VARCHAR(255) ,
    role VARCHAR(255)
);