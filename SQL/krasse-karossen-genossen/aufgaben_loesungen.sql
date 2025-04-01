-- Tipp für die Aufgaben: Wenn ihr unsicher seid, welche Tabellen "gejoint" werden müssen, schaut euch unser ER-Diagramm nochmal an ;)


-- Gib für jede Rechnung die dazu gehörigen Autos (id, marke + modell) und den Preis (des autos) aus.
SELECT car.id, car.make, car.model, car.price, invoice.id, invoice.date_of_sale
FROM car
LEFT JOIN invoice ON car.invoice_id = invoice.id;

SELECT c.make,c.model,c.price,i.id 
FROM car as c, invoice as i
where c.invoice_id = i.id
Order by invoice_id;


SELECT invoice.id, invoice.date_of_sale, car.make, car.model, car.price
FROM car
INNER JOIN invoice ON car.invoice_id = invoice.id
GROUP BY invoice.date_of_sale DESC;


-- Gebe Vor- und Nachname und die volle Anschrift von allen Kunden aus, die im objektiv gesehen besten Bundesland wohnen.
SELECT first_name, last_name, a.street, house_number, postal_code, city, state
FROM customer
JOIN address AS a
	ON customer.address_id = a.id
WHERE state="Baden-Württemberg";


SELECT c.first_name,c.last_name,a.state,a.city, a.street,a.house_number,a.postal_code
FROM customer AS c, address AS a
WHERE c.address_id = a.id AND a.state = "Baden-Württemberg";

-- Gebe alle Mitarbeiter (Vor- und Nachname) und die Autos (ID, Marke, Modell) die sie verkauft haben aus. Sortiere zuerst nach MitarbeiterID und dann nach Automarke
-- Tipp zum Überprüfen: employee.id 40 hat 2 "GMC" Fahrzeuge verkauft
SELECT employee.id, employee.first_name, employee.last_name, invoice.id, car.id, car.make, car.model
FROM employee
INNER JOIN invoice
ON employee.id = invoice.employee_id
INNER JOIN car
ON invoice.id = car.invoice_id
ORDER BY employee.id, car.make;


SELECT employee.id, employee.first_name, employee.last_name, car.id, car.make, car.model
FROM employee
JOIN invoice ON employee.id = invoice.employee_id
JOIN car ON invoice.id = car.invoice_id
ORDER BY employee.id, car.make;

SELECT e.first_name, e.last_name, e.id, c.make, c.model, i.id AS rechnungsid 
FROM employee AS e, car AS c, invoice AS i 
WHERE c.invoice_id = i.id AND e.id = i.employee_id
ORDER BY e.id;

-- Gebe für jede Stadt die Anzahl der dort wohnenden Kunden aus. Sortiere absteigend nach Anzahl der Kunden.
SELECT address.city AS "Stadt", COUNT(customer.id) AS "Anzahl_Kunden"
FROM address
JOIN customer
	ON customer.address_id = address.id
GROUP BY address.city
ORDER BY Anzahl_Kunden DESC;

SELECT a.city, COUNT(c.id) AS "Amount of Customers"
FROM address AS a, customer AS c
WHERE a.id = c.id
GROUP BY a.city
ORDER BY `Amount Customer` DESC;


-- Liste alle Autos auf, die bereit zum Verkauf sind, und sortiere sie nach Preis absteigend.

SELECT id, make, model, price, ready_to_sell
FROM  car
WHERE ready_to_sell = TRUE
ORDER BY price DESC;

-- Zeige alle Kunden mit ihren Rechnungen, die eine Kreditkarte als Zahlungsmethode gewählt haben.
SELECT customer.first_name AS "Vorname",
	customer.last_name AS "Nachname",
	invoice.id AS "Rechnungsnummer",
	invoice.payment_option AS "Bezahlmethode"
FROM customer
JOIN invoice
	ON customer.id = invoice.customer_id
WHERE invoice.payment_option = "credit card"
ORDER BY customer.id ASC;

SELECT c.id,c.first_name,c.last_name, i.id,i.payment_option
FROM customer AS c, invoice AS i
WHERE c.id = i.customer_id and i.payment_option = "credit card";

SELECT DISTINCT first_name, last_name, invoice.id
FROM customer
JOIN invoice ON customer.id = invoice.customer_id
WHERE payment_option = 'credit card';

-- Zeige alle Autos an, die vor mehr als 25 Jahren gebaut wurden, sortiert nach Baujahr.
-- Bonus-Punkte wenn man nicht jedes Jahr das Script anpassen muss :)
SELECT c.make,c.model, c.date_built
FROM car AS c
WHERE c.date_built < YEAR(CURDATE()) - 25
ORDER BY c.date_built;

SELECT make, model, date_built
FROM car
WHERE YEAR(NOW()) - date_built > 25
ORDER BY date_built DESC;

SELECT c.make,c.model, c.date_built
FROM car AS c
WHERE c.date_built < 2025 - 25
ORDER BY c.date_built;

-- Zeige alle Rechnungen an, die von Mitarbeitern aus der gleichen Stadt wie der Kunde bearbeitet wurden.
-- Damit ihr ein Beispiel zum Prüfen habt, führt die folgenden Insert-Statements
--  zuerst aus (nur ein mal)



INSERT INTO customer
(id, first_name, last_name, email, phone, date_of_birth, address_id)
VALUES
(1001, "Andreas", "Müller", "asmueller@aol.de", "555-Nase", "1996-04-20", 42);

INSERT INTO employee
(id, first_name, last_name, email, phone, date_of_birth, address_id)
VALUES
(1001, "Andrea", "Müller", "amueller@aol.de", "555-Nase", "1997-04-20", 42);

INSERT INTO invoice
(date_of_sale, price, payment_option, customer_id, employee_id)
VALUES
("2024-04-20", 1024.99, "crypto", 1001, 1001);

-- Wenn ihr diese letzte Aufgabe geschafft habt, bin ich mir sicher, dass
--  ihr alles was euch die IHK in der Prüfung an Fragen zur Query-Language
--  stellen könnte schaffen könnt :)

SELECT i.id, e.id, e.first_name, e.last_name, c.id, c.first_name, c.last_name,  a_customer.city, a_employee.city
FROM invoice AS i
INNER JOIN customer AS c ON i.customer_id = c.id
INNER JOIN employee AS e ON i.employee_id = e.id
INNER JOIN address AS a_customer ON a_customer.id = c.address_id -- Address -> Customer
INNER JOIN address AS a_employee ON a_employee.id = e.address_id -- Address -> Employee
WHERE a_employee.city = a_customer.city; -- Vergleich: Address Employee = Address Customer



SELECT 
    i.id AS invoice_id,
    i.date_of_sale,
    i.price,
    c.first_name AS customer_first_name,
    c.last_name AS customer_last_name,
    e.first_name AS employee_first_name,
    e.last_name AS employee_last_name,
    customer_address.city AS c_shared_city,
    employee_address.city AS e_shared_city
FROM 
    invoice i, customer c, employee e, address customer_address, address employee_address
WHERE 
    customer_address.city = employee_address.city
    AND i.customer_id = c.id
    AND i.employee_id = e.id
    AND c.address_id = customer_address.id
    AND e.address_id = employee_address.id;
