-- setze alle payment_option auf invoices mit preis über 100000 auf "credit
-- card", und im selben query alle invoices mit preis unter 50000
-- auf payment_option cash
SELECT *
FROM invoice
WHERE price > 100000;

SELECT *
FROM invoice
WHERE price < 50000;

UPDATE invoice
SET payment_option = "credit card"
WHERE price > 100000;

UPDATE invoice
SET payment_option = "cash"
WHERE price < 50000;

-- wie funktioniert sql case keyword?
SELECT id, make, model, date_built,
  CASE
    WHEN date_built < 2000 THEN "Gold-Timer"
    WHEN date_built >= 2000
      AND date_built < 2010 THEN "Millenial"
    ELSE "Jungspund"
  END AS Vibe
FROM car
ORDER BY Vibe;

-- jetzt beide updates in einem
UPDATE invoice
SET payment_option =
  CASE
    WHEN price > 100000 THEN "credit card"
    WHEN price < 50000 THEN "cash" 
  END;

-- und jetzt gleichzeitig den preis bei "credit card" um 10% erhöhen, und 10% nachlass bei "cash"
UPDATE invoice
SET payment_option =
  CASE
    WHEN price > 100000 THEN "credit card"
    WHEN price < 50000 THEN "cash" 
  END,
  price = 
  CASE
    WHEN payment_option = "credit card" THEN price * 1.1
    WHEN payment_option = "cash" THEN price * 0.9
  END;

