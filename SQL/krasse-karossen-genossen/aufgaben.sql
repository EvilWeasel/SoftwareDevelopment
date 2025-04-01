-- Tipp für die Aufgaben: Wenn ihr unsicher seid, welche Tabellen "gejoint" werden müssen, schaut euch unser ER-Diagramm nochmal an ;)


-- Gib für jede Rechnung die dazu gehörigen Autos (id, marke + modell) und den Preis (des autos) aus.

-- Gebe Vor- und Nachname und die volle Anschrift von allen Kunden aus, die im objektiv gesehen besten Bundesland wohnen.

-- Gebe alle Mitarbeiter (Vor- und Nachname) und die Autos (ID, Marke, Modell) die sie verkauft haben aus. Sortiere zuerst nach MitarbeiterID und dann nach Automarke
-- Tipp zum Überprüfen: employee.id 40 hat 2 "GMC" Fahrzeuge verkauft

-- Gebe für jede Stadt die Anzahl der dort wohnenden Kunden aus. Sortiere absteigend nach Anzahl der Kunden.

-- Liste alle Autos auf, die bereit zum Verkauf sind, und sortiere sie nach Preis absteigend.

-- Zeige alle Kunden mit ihren Rechnungen, die eine Kreditkarte als Zahlungsmethode gewählt haben.

-- Zeige alle Autos an, die seit mehr als 5 Jahren gebaut wurden, sortiert nach Baujahr.
-- Bonus-Punkte wenn man nicht jedes Jahr das Script anpassen muss :)


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