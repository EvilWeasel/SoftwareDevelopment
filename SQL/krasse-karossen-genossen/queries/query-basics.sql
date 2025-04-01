-- Basic Query Syntax
-- Asterisk "*" Wildcard -> Selektiere alles -> alle Spalten ausgeben
SELECT * FROM car;

-- Bei SELECT können auch einzelne Spalten angegeben werden, um nicht alles ausgeben zu müssen
SELECT id, make, model, date_built FROM car;

-- Whitespace wird vollständig ignoriert vom SQL-Server
-- Genau deswegen sind die Semikolons ";" nach jedem "Statement" wichtig!
SELECT
id,
make
FROM
car;

-- Konvention: Jedes Teil-Statement in neue Zeile-->
SELECT id, make, model, date_built
FROM car
WHERE make LIKE "nissan"
AND model LIKE "pathfinder";

-- Distinct -> keine doppelten Werte -> Gibt nur einzigartige Werte zurück
SELECT DISTINCT country
FROM address;

-- Kombination muss unique sein, in diesem Beispiel (make und model) kommt nicht doppelt vor
SELECT DISTINCT make, model
FROM car;

-- Where zum filtern von Werten
-- Hint: einfaches Gleich-Zeichen "=" für Vergleiche
SELECT model
FROM car
WHERE make="ford";

-- Filter auf ID häufig bei Anwendungsentwicklung -> Ändere Kunde basierend auf ID
SELECT first_name, last_name
FROM customer
WHERE id = 1;

-- LIKE für Textvergleiche die nicht 1:1 stimmen, eg. mit "%" für Wildcard
SELECT DISTINCT make
FROM car
WHERE make LIKE "h%";

-- "_" einzelner Platzhalter -> 1 Character
SELECT id, make, model
FROM car
WHERE model LIKE "__Series%";

-- Selektiert alle Modelle mit Leerzeichen irgendwo im String
SELECT id, make, model
FROM car
WHERE model LIKE "% %";

-- Gebe alle Modelle zurück, welche ab 2000 produziert wurden
SELECT id, model, date_built
FROM car
WHERE date_built>=2000;

INSERT INTO customer
(first_name, last_name, email, phone, date_of_birth, address_id)
VALUES
("Jürgen", "Würger", "jwuerger@aol.de", "5555-Nase", "1999-12-31", 69);

-- Alle Kunden welche in den 90ern geboren sind
SELECT id, first_name, last_name, date_of_birth
FROM customer
WHERE date_of_birth BETWEEN "1990-01-01" AND "1999-12-31";

-- Gebe alle Ford-Modelle und deren Preis zurück, sortiert nach Preis
SELECT id, make, model, price
FROM car
WHERE make="ford"
ORDER BY price;

-- Alle Modelle mit absteigenden Preis
SELECT id, make, model, price
FROM car
ORDER BY price DESC;

-- Alle modelle, welche keine Chevi's sind und nach 2000 gebaut wurden
SELECT id, make, model, date_built
FROM car
WHERE NOT make LIKE "Chev%"
AND date_built>=2000
ORDER BY make ASC, date_built DESC;

-- Aggregatsfunktionen
-- Aus einer Menge an Werten, mache einen singulären Wert
-- z.B. Summe: 1,2,3,4,5 -> 15

-- Wie viele Chevi's habe ich?
SELECT COUNT(id)
FROM car
WHERE make LIKE "chev%";

-- Wie viele Autos habe ich verkauft
SELECT COUNT(invoice_id)
FROM car;

-- Obacht: COUNT(*) zählt auch "null" Werte, wenn also eine Zelle keinen Wert hat
-- 	Count(spalte), wobei Spalte null-Werte enthält, ergibt einen geringen Count

SELECT SUM(price)
FROM car;

-- GROUP BY
-- Aggregatsfunktionen auf einen Wert in einer anderen Spalte zu beziehen, 
-- 	eg. Zähle alles (id) basierend auf Wert in Spalte "make"
SELECT make, COUNT(id)
FROM car
GROUP BY make;

-- Gebundenes Kaptial pro Marke
SELECT `make`, SUM(`price`) AS "Gebundenes Kapital"
FROM car
GROUP BY make;

-- Gebundenes Kaptial über 1Mio pro Marke
-- Die folgenden 2 Beispiele geben gleiches Ergebnis, zumindest unter T-SQL (MSSQL) und MySQL
-- Variante 1:
SELECT `make`, SUM(`price`) AS "Gebundenes Kapital über 1Mio"
FROM car
GROUP BY make
HAVING `Gebundenes Kapital` >= 1000000;
-- Variante 2:
SELECT `make`, SUM(`price`) AS "Gebundenes Kapital über 1Mio"
FROM car
GROUP BY make
HAVING SUM(price) > 1000000;
-- Ende gleiches Beispiel

SELECT `make`, SUM(`price`) AS "Gebundenes manuelles Kapital über 500k"
FROM car
WHERE gearbox = "manual"
GROUP BY make
HAVING SUM(price) > 500000;


-- SQL JOINS
-- 

-- ID, Marke und Modell und Namen des vorherigen Besitzers für alle Chevi's
SELECT car.id, car.make, car.model, customer.first_name, customer.last_name
FROM car
INNER JOIN customer ON car.bought_from_id = customer.id
WHERE make LIKE "chev%";


-- Gebe allen Rechnungen von Kylen Eggleston jeweils das Datum, die Bezahlmethode und den Preis zurück
--		wobei die Zahlmethode "Cash" ist.
SELECT date_of_sale, payment_option, price
FROM invoice
INNER JOIN customer ON invoice.customer_id = customer.id
WHERE payment_option LIKE "cash"
AND customer.id = 13;

-- und jetzt richtig über filtern mit namen:
SELECT date_of_sale, payment_option, price
FROM invoice
INNER JOIN customer ON invoice.customer_id = customer.id
WHERE payment_option LIKE "cash"
AND customer.first_name = "Kylen"
AND customer.last_name = "Eggleston";

SELECT *
FROM invoice
ORDER BY employee_id ASC;


-- alle invoices aus allen jahren an allen tagen nur die im oktober-dezember ausgestellt wurden
SELECT date_of_sale
FROM invoice
WHERE date_of_sale LIKE "%-1%-%";

-- TOP (MSSQL bzw. T-SQL) / LIMIT (MySQL / MariaDB)
-- Für MSSQL: SELECT TOP 10;

-- gebe die top 10 kunden (id, first- and lastname) zurück, welche am meisten geld bei uns gelassen haben.
SELECT c.id, c.first_name, c.last_name, SUM(i.price) AS GesamtPreis
FROM customer AS c
JOIN invoice AS i
  ON c.id = i.customer_id
GROUP BY c.id
ORDER BY GesamtPreis DESC
LIMIT 10;