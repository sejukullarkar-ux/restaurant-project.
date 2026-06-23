DROP DATABASE IF EXISTS restaurant_db;

CREATE DATABASE restaurant_db;
USE restaurant_db;
CREATE TABLE users (
user_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
password VARCHAR(255) NOT NULL,
role VARCHAR(20) DEFAULT 'customer'
);

CREATE TABLE menu (
item_id INT AUTO_INCREMENT PRIMARY KEY,
item_name VARCHAR(100) NOT NULL,
price DECIMAL(10,2) NOT NULL,
category VARCHAR(50),
image VARCHAR(255)
);

CREATE TABLE cart (
cart_id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT,
item_id INT,
quantity INT DEFAULT 1,
FOREIGN KEY (user_id) REFERENCES users(user_id),
FOREIGN KEY (item_id) REFERENCES menu(item_id)
);

CREATE TABLE orders (
order_id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT,
total_amount DECIMAL(10,2),
order_status VARCHAR(50) DEFAULT 'Pending',
order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE order_items (
order_item_id INT AUTO_INCREMENT PRIMARY KEY,
order_id INT,
item_id INT,
quantity INT,
FOREIGN KEY (order_id) REFERENCES orders(order_id),
FOREIGN KEY (item_id) REFERENCES menu(item_id)
);

CREATE TABLE reviews (
review_id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT,
rating INT,
comment TEXT,
FOREIGN KEY (user_id) REFERENCES users(user_id)
);

INSERT INTO users(name,email,password,role)
VALUES
('Manager','[manager@gmail.com](mailto:manager@gmail.com)','manager123','manager');

INSERT INTO menu(item_name,price,category,image)
VALUES
('Burger',120,'Fast Food','burger.jpg'),
('Pizza',250,'Fast Food','pizza.jpg'),
('Coffee',80,'Beverage','coffee.jpg'),
('Pasta',180,'Italian','pasta.jpg'),
('French Fries',100,'Snacks','fries.jpg');

SELECT * FROM users;
SELECT * FROM menu;
