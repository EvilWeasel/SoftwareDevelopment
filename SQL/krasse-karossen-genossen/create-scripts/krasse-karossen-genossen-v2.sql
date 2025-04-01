-- KrasseKarossenGenossen v2
-- Create DB + Tables

-- First delete old DB
-- USE krassekarossengenossen; -- "IF EXISTS" nicht möglich
-- DROP TABLE IF EXISTS cars; -- Nicht notwendig, weil wir die ganze Datenbank droppen
DROP DATABASE IF EXISTS krassekarossengenossen;

-- Create DB
CREATE DATABASE krassekarossengenossen;

-- Use correct DB T__T
USE krassekarossengenossen;

-- Create Tablesaddress
-- Primary Key Constraint
--   => UNIQUE, NOT NULL, INDEX
CREATE TABLE address (
	id INT PRIMARY KEY AUTO_INCREMENT,
	country TEXT(100),
	state TEXT(100),
	city TEXT(100),
	street TEXT(100),
	house_number TEXT(10),
	postal_code TEXT(12)
);

CREATE TABLE customer (
	id INT PRIMARY KEY AUTO_INCREMENT,
	first_name TEXT(50),
	last_name TEXT(50),
	email TEXT(100),
	phone TEXT(20),
	date_of_birth DATE,
	address_id INT,
	CONSTRAINT fk_customer_address FOREIGN KEY (address_id) REFERENCES address(id)
);

CREATE TABLE employee (
	id INT PRIMARY KEY AUTO_INCREMENT,
	first_name TEXT(50),
	last_name TEXT(50),
	email TEXT(100),
	phone TEXT(20),
	date_of_birth DATE,
	address_id INT,
	CONSTRAINT fk_employee_address FOREIGN KEY (address_id) REFERENCES address(id)
);

CREATE TABLE invoice (
	id INT PRIMARY KEY AUTO_INCREMENT,
	date_of_sale DATE,
	price DECIMAL(8,2),
	payment_option SET("cash", "credit card", "crypto"),
	customer_id INT,
	employee_id INT,
	CONSTRAINT fk_invoice_customer FOREIGN KEY (customer_id) REFERENCES customer(id),
	CONSTRAINT fk_invoice_employee FOREIGN KEY (employee_id) REFERENCES employee(id)
);

CREATE TABLE car (
	id INT PRIMARY KEY AUTO_INCREMENT,
	make TEXT(20),
	model TEXT(50),
	date_built YEAR,
	color TEXT(30),
	gearbox SET("automatic", "manual"),
	mileage INT,
	price DECIMAL(8,2),
	amount_previous_owners INT,
	ready_to_sell BOOLEAN,
	bought_from_id INT,
	invoice_id INT,
	CONSTRAINT fk_car_bought_from FOREIGN KEY (bought_from_id) REFERENCES customer(id),
	CONSTRAINT fk_car_invoice_id FOREIGN KEY (invoice_id) REFERENCES invoice(id)
);
