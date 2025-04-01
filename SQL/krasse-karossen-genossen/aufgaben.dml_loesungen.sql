-- Aufgabe 1:
-- Füge die folgenden Kunden gleichzeitig hinzu:
--  Julia Meier, julia.meier@example.com, geboren am 1992-01-15, Adresse Deutschland, Hessen, Frankfurt, Kaiserstraße 15, 60311.
--  Stefan Klein, stefan.klein@example.com, geboren am 1988-05-20, Adresse Deutschland, Hessen, Frankfurt, Hauptstraße 30, 60329.
-- Hinweis: Die IDs sollten manuell gesetzt werden auf 1000 und 1001 damit die nächsten Aufgaben wie beschrieben funktionieren

INSERT INTO address (id, country, state, city, street, house_number, postal_code)
VALUES
  (1000, "Deutschland", "Hessen", "Frankfurt", "Kaiserstraße", 15, "60311"),
  (1001, "Deutschland", "Hessen", "Frankfurt", "Hauptstraße", 30, "60329");

INSERT INTO customer (id, first_name, last_name, email, date_of_birth, address_id)
VALUES
  (1000, "Julia", "Meier", "julia.meier@example.com", "1992-01-15", 1000),
  (1001, "Stefan", "Klein", "stefan.klein@example.com", "1988-05-20", 1001);

-- Aufgabe 2:
-- Ein neues Auto der Marke BMW, Modell 3er, Baujahr 2021, Preis 35.000, wird von Kunde id = 1000 an uns verkauft und von id = 1001 gekauft. Mitarbeiter id = 1002 hat die Rechnung erstellt. Die Bezahlung erfolgte in bar.

insert into employee (id, first_name, last_name, email, date_of_birth, address_id) 
VALUES (1002, "Julian", "Meier", "juliaN.meier@example.com", '1990/01/01', 1000);

INSERT INTO invoice (payment_option, customer_id, employee_id)INSERT INTO invoice (price, payment_option, customer_id, employee_id)
VALUES (35000, 'cash', 1001, 1002);
	VALUES 
	('cash', 1001, 1002);

INSERT INTO car
(make, model, date_built, price, ready_to_sell, bought_from_id, invoice_id)
VALUES 
	('BMW', '3 Series', 2021, 35.000, TRUE, 1000, LAST_INSERT_ID());

INSERT INTO car
(id,make,model,date_built,color,gearbox,mileage,price,ready_to_sell,amount_previous_owner)
VALUES 
(105, "BMW", "320d", 2021, "grey", "manual", 12000, 35000, 1,2);

INSERT INTO invoice (price, payment_option, customer_id, employee_id)
VALUES (35000, 'cash', 1001, 1002);

INSERT INTO car
(make, model, date_built, price, bought_from_id, invoice_id)
VALUES
('BMW', '3er', 2021, 35000, 1000, 
  (
    SELECT id
    FROM invoice 
    WHERE customer_id = 1001
    AND employee_id = 1002
    AND price = 35000
    AND payment_option = 'cash'
  )
);

SELECT id FROM invoice 
     WHERE customer_id = 1001 AND employee_id = 1002 AND payment_option = 'cash';

-- Aufgabe 3:
-- Aktualisiere die Telefonnummer aller Kunden, die in Berlin wohnen mit PLZ 10823, auf 069-123456.

UPDATE customer
SET phone = '069-123456'
WHERE address_id IN (
  SELECT id
  FROM address
  WHERE city = 'Berlin' AND postal_code = '10823' 
);

-- Aufgabe 4:
-- Reduziere den Preis aller Autos der Marke Volkswagen, die vor mehr als 30 Jahren gebaut wurden, um 20 %.

SELECT * FROM car
WHERE make = "Volkswagen"
and date_built < YEAR(CURDATE())-30;

UPDATE car
SET price = price * 0.8
WHERE make = 'Volkswagen'
AND YEAR(CURDATE()) - date_built > 30;

SELECT *
FROM car
WHERE make = 'Volkswagen'
AND CURDATE() - date_built > 30;

SELECT YEAR(CURDATE()) - 1998 > 30;

UPDATE car
SET price = price * 0.8
WHERE id IN (
    SELECT id
    FROM car
    WHERE make = 'Volkswagen'
    AND date_built < DATE_SUB(CURDATE(), INTERVAL 30 YEAR)
);

UPDATE car SET price = price * 0.8
WHERE make = "Volkswagen"
and date_built < YEAR(CURDATE())-30;

-- Aufgabe 5:
-- Lösche alle Kunden aus der Datenbank, die keine einzige Rechnung in der Tabelle invoice haben.

SELECT c.id, c.first_name, c.last_name, i.id, i.date_of_sale
FROM customer as c
LEFT JOIN invoice as i
ON i.customer_id = c.id
WHERE i.customer_id IS NULL;

SELECT c.id, c.first_name, c.last_name
FROM customer as c;

DELETE FROM car
WHERE bought_from_id IN (
  SELECT c.id
  FROM customer as c
  LEFT JOIN invoice as i ON c.id = i.customer_id
  WHERE i.id IS NULL
);

-- korrekte lösung, aber schlägt fehl, da foreign-key constraint verhindert kunden zu löschen, welche in "car.bought_from" referenziert werden.
DELETE FROM customer
WHERE id IN (
  SELECT customer.id
  FROM customer
  LEFT JOIN invoice ON customer.id = invoice.customer_id
  WHERE invoice.id IS NULL
);

SELECT * FROM car;
SELECT * FROM customer;
