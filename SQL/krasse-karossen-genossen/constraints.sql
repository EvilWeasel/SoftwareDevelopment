INSERT INTO customer
VALUES
(42070, "Chungus4", "Big", "bchungus@lutzundgrub.de", "0800-696969-CALL-ME", "1996/04/20", NULL);

-- es existiert bereits ein customer ohne address_id, deshalb nur möglich wenn dies nicht der fall ist -> am besten im create database script anpassen
ALTER TABLE customer
MODIFY COLUMN address_id INT NOT NULL;

ALTER TABLE customer
MODIFY COLUMN email TEXT(100) UNIQUE;

ALTER TABLE employee
MODIFY COLUMN email TEXT(100) UNIQUE;

-- Funktionen können nicht in CHECK verwendet werden
ALTER TABLE customer
MODIFY COLUMN date_of_birth DATE CHECK(
  YEAR(date_of_birth) < YEAR(CURDATE()) - 18
)
-- 1998 < 2025 - 18
-- 1998 < 2007

-- DEFAULT -> Standart-Wert, wenn die Spalte im INSERT INTO nicht angegeben wird
ALTER TABLE invoice
MODIFY COLUMN date_of_sale DATE DEFAULT CURDATE();

insert into invoice
(price, payment_option, customer_id, employee_id)
values
(130542.61, 'credit card', 12, 39);
