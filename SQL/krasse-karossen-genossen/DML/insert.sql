-- Insert Into
-- Mit Spalten-Angabe

INSERT INTO address
(`country`, `state`, `city`, `street`, `house_number`, `postal_code`)
VALUES
("Alderan", "Rebel-Berg", "Rebelcity", "Todessternstraße", 1024, "42069");

SELECT * FROM address
WHERE country = "Alderan";

-- Ohne Spalten-Angabe
INSERT INTO customer
VALUES
(54, "Chungus4", "Big", "bchungus@lutzundgrub.de", "0800-696969-CALL-ME", "1996/04/20", 101);

SELECT * FROM customer
WHERE first_name = "Chungus";

-- Mehrere Zeilen (Datensätze) auf einmal hinzufügen
INSERT INTO address
(`country`, `state`, `city`, `street`, `house_number`, `postal_code`)
VALUES
("Italy", "Milan", "Milan-City", "Coffee-Lane", 11, "12345"),
("Vatican", "Vatican", "Vatican-City", "Papststrasse", 666, "666999"),
("Sweden", "Lappland", "Smørrebrøt", "Bjørnstråsse", 12, "12133121");

SELECT * FROM address
ORDER BY id DESC;

-- Nested INSERT Into
-- Findet der SQL-Server gar nicht lustig...
INSERT INTO customer
VALUES
(54, "Chungus4", "Big", "bchungus@lutzundgrub.de", "0800-696969-CALL-ME", "1996/04/20", 
  (INSERT INTO address
  (`country`, `state`, `city`, `street`, `house_number`, `postal_code`)
  VALUES
  ("Buxtehude", "Milan", "Milan-City", "Coffee-Lane", 11, "12345"))
);