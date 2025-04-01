-- UPDATE
-- Einfaches Update

SELECT *
FROM customer
WHERE first_name = "Chungus";

-- Zuerst das WHERE (den Filter) ausfüllen, ansonsten operieren wir an allen Datensätzen
UPDATE customer
SET email = "bchungus@training.lug-ag.de"
WHERE id = 51;

SELECT *
FROM customer
WHERE first_name = "Chungus";

-- UPDATES mit Subquery
-- alles autos die mit crypto bezahlt wurden preis um 10% erhöhen
-- test: car.id = 24 vw cabriolet; invoice.id = 3 preis vorher 252.605.00€ preis nacher 277.865.50€
UPDATE car
SET price = price * 1.1
WHERE invoice_id IN (
  SELECT id
  FROM invoice
  WHERE payment_option = "crypto"
);

