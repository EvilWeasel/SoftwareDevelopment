-- Mit Stored-Procedures lassen sich SQL-Anweisungen mit einem Namen versehen,
--  den ich später einfach als Alias aufrufen kann

-- Beispiel ohne Parameter
-- Zeige alle Rechnungen an, die von Mitarbeitern aus der gleichen Stadt wie der Kunde bearbeitet wurden.
CREATE PROCEDURE InvoicesWithSameCity()
BEGIN
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
END;

CALL InvoicesWithSameCity();

-- Procedure löschen
-- DROP PROCEDURE InvoicesWithSameCity;

-- Mit Parametern
CREATE PROCEDURE InvoicesWithSameDefinedCity(cityForBoth TEXT(100))
BEGIN
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
    AND e.address_id = employee_address.id
    AND customer_address.city = cityForBoth;
END;

-- DROP PROCEDURE InvoicesWithSameDefinedCity;
CALL InvoicesWithSameDefinedCity("München");


-- alles autos die mit crypto bezahlt wurden preis um @factor erhöhen
SELECT car.id, model, make, car.price, payment_option
FROM car
JOIN invoice ON car.invoice_id = invoice.id
WHERE payment_option = "crypto";

CREATE PROCEDURE TaxCryptoBy(factor DECIMAL)
BEGIN
UPDATE car
SET price = price * factor
WHERE invoice_id IN (
  SELECT id
  FROM invoice
  WHERE payment_option = "crypto"
);
END;

CALL TaxCryptoBy(1.2);




-- test
CREATE PROCEDURE InvoicesWithSameDefinedCity(cityForBoth TEXT(100))
BEGIN
SELECT 
    i.id AS invoice_id,
    i.date_of_sale,
    i.price,
    c.first_name AS customer_first_name,
    c.last_name AS customer_last_name,
    e.first_name AS employee_first_name,
    e.last_name AS employee_last_name,
    address.city
FROM 
    invoice i, customer c, employee e, address
WHERE 
    WHERE i.customer_id = c.id
    AND i.employee_id = e.id
    AND c.address_id = address.id
    AND customer_address.city = cityForBoth;
END;