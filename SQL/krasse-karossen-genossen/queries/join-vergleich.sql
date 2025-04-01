select * from `car`;

SELECT Count(car.id)
FROM car;
-- car.id, car.make, car.model + invoice.id, invoice.date_of_sale
-- Inner Join verknüpft Zeilen in 2 Tabellen miteinander, wobei die Bedingung in dem "ON" Statement erfüllt sein muss.
-- 3 Autos haben keine Rechnung -> NULL
-- NULL existiert nicht in "invoice.id" als Primary Key
-- NULL Werte werden hier nicht angezeigt, weil keine Übereinstimmung
SELECT Count(car.id)
FROM car
INNER JOIN invoice ON car.invoice_id = invoice.id;

-- Bei einem Join ist die Tabelle die ich Joine die rechte Tabelle, heißt:
--  Wenn ich alle Werte von der originalen "FROM" Tabelle haben will, muss ich einen LEFT JOIN machen
SELECT car.id, car.make, car.model, invoice.id, invoice.date_of_sale
FROM car
INNER JOIN invoice ON car.invoice_id = invoice.id;

-- Left Join inkludiert alle Zeilen der linken Tabelle + Zeilen aus Tabelle 2, 
--  wo die Bindingung im "ON" Statement erfüllt ist
SELECT car.id, car.make, car.model, invoice.id, invoice.date_of_sale
FROM car
LEFT JOIN invoice ON car.invoice_id = invoice.id;

-- Bei einem Join ist die Tabelle die ich Joine die rechte Tabelle, heißt:
--  Wenn ich alle Werte von der zu joinenden Tabelle haben will, muss ich einen RIGHT JOIN machen
-- invoice.id, invoice.date_of_sale, invoice.price, employee.id, employee.first_name, employee.last_name
--  von allen Rechnungen inklusive mitarbeitern welche keinen verkauf getätigt haben
SELECT invoice.id, invoice.date_of_sale, invoice.price, employee.id, employee.first_name, employee.last_name
FROM invoice
RIGHT JOIN employee
ON invoice.employee_id = employee.id;

