CREATE DATABASE catering;

USE catering;

CREATE TABLE customers (
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  phone_number VARCHAR(20) NOT NULL,
  email VARCHAR(255) NOT NULL
);

CREATE TABLE menus (
  menu_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  price DECIMAL(10, 2) NOT NULL
);

CREATE TABLE orders (
  order_id INT AUTO_INCREMENT PRIMARY KEY,
  customer_id INT NOT NULL,
  menu_id INT NOT NULL,
  order_date DATE NOT NULL,
  order_time TIME NOT NULL,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  FOREIGN KEY (menu_id) REFERENCES menus(menu_id)
);

CREATE TABLE payments (
  invoice_id INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT NOT NULL,
  total_price DECIMAL(10, 2) NOT NULL,
  payment_status ENUM('paid', 'unpaid') NOT NULL DEFAULT 'unpaid',
  FOREIGN KEY (order_id) REFERENCES orders(order_id)
);
