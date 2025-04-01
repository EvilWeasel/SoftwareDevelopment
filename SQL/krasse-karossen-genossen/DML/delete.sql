-- DELETE FROM
-- Wie bei allen destruktiven Operationen (eg. Update)
-- Immer zuerst die Bedingung angeben und im besten Fall eine Transaktion

-- Negativ-Beispiel - Delete From zuerst geschrieben und auf der Tastatur ausgerutscht...
DELETE FROM car


DELETE FROM employee -- funktioniert nicht, weil es die REFERENZIELLE INTEGRITÄT gefährdet --> Bedeutet: Es sorgt dafür, dass Daten, die zusammengehören, korrekt miteinander verknüpft bleiben.
-- employee wird von invoice referenziert, was passiert also mit dem datensatz in der invoice tabelle?
-- Standart: RESTRICT => Referenzielle Integrität wird gewahrt => Löschen des Mitarbeiters wird verhindert, solange er referenziert wird


-- Einfaches Beispiel
-- Lösche das Auto mit der ID 42
DELETE FROM car
WHERE id = 42;

-- mitarbeiter ohne invoice: id 6, 15, 18, 21, 22, 23, 24
-- Dieser Query gibt alle Mitarbeiter zurück, aber auch welche mit Rechnung
SELECT employee.id, first_name, last_name, invoice.id, invoice.employee_id
FROM employee
LEFT JOIN invoice -- Brauchen hier einen Left join, da der Inner Join immer nur Daten anzeigt wenn die Bedingung beidseitig erfüllt ist
  ON employee.id = invoice.employee_id
WHERE invoice.id IS NULL; -- "= Null" existiert nicht weil das "Null" einfach für empty steht


SELECT e.id, e.first_name, e.last_name
FROM employee e
LEFT JOIN invoice i ON e.id = i.employee_id
WHERE i.id IS NULL;

-- lösche alle mitarbeiter, welche bisher noch keine autos verkauft haben
DELETE FROM employee
WHERE id IN (
  SELECT e.id
  FROM employee e
  LEFT JOIN invoice i ON e.id = i.employee_id
  WHERE i.id IS NULL
);
-- https://mariadb.com/kb/en/is/
SELECT 1 IS TRUE, 2 IS TRUE, 3 IS TRUE, 0 is TRUE, -1 is TRUE, NULL is TRUE;

SELECT 1 = TRUE, 2 = TRUE, 3 = TRUE, 0 = TRUE, -1 = TRUE, NULL = TRUE;


