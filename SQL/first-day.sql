-- SHOW DATABASES;
-- CREATE DATABASE KrasseKarossenGenossen;
USE krassekarossengenossen;
CREATE TABLE Cars (
	make TEXT(20),
	model TEXT(100),
	year_registered Year,
	price DECIMAL(8,2),
	color SET("black", "white", "red"),
	hp Int,
	automatic_gearbox Boolean,
	needs_service BOOL,
	milage Bigint,
	sales_manager TEXT(60)
);