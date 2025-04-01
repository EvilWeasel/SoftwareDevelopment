-- Views sind "Virtuelle Tabellen", die ich mit einem Select erstellen kann.
-- Nützlich um häufige Abfragen als Tabelle in der Datenbank abzuspeichern
-- Eine View kopiert die Daten nicht, sondern Referenziert diese (aktuallisiert sich selbst)
-- Auf einer View kann man auch wieder Abfragen machen (eg. nicht nur SELECT *)
--  Außerdem: UPDATE möglich
CREATE VIEW customer_with_address AS
SELECT c.id, c.first_name, c.last_name, c.email, c.phone,
  c.date_of_birth, a.country, a.state, a.city, a.street, a.house_number
FROM customer AS c
INNER JOIN address AS a
  ON c.address_id = a.id;

SELECT * FROM customer_with_address;

SELECT first_name, last_name, city FROM customer_with_address;

INSERT INTO customer
VALUES
(42069, "Chungus4", "Big", "bchungus@lutzundgrub.de", "0800-696969-CALL-ME", "1996/04/20", 42);

INSERT INTO customer_with_address
(id, first_name, last_name, email, phone, date_of_birth, country, state, city, street, house_number)
VALUES
(42070, "Chungus5", "Big", "bchungus@lutzundgrub.de", "0800-696969-CALL-ME", "1996/04/20", "Germany", "Baden-Württemberg", "Heilbronx", "Hans-Sachs-Strasse", "42069");

UPDATE customer_with_address
SET first_name = "Chungus"
WHERE id = 42069;

SELECT * FROM customer;

ALTER TABLE customer_with_address
RENAME COLUMN id TO kundennummer;

CREATE OR REPLACE VIEW customer_with_address AS
SELECT c.id AS kundennummer, c.first_name, c.last_name, c.email, c.phone,
  c.date_of_birth, a.country, a.state, a.city, a.street, a.house_number
FROM customer AS c
INNER JOIN address AS a
  ON c.address_id = a.id;

SELECT * FROM customer_with_address;

DELETE FROM customer
WHERE id = 42069;