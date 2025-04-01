# Abschlussaufgabe: Datenbank für „Streamify“ – Eine Musikstreaming-Plattform

## Auftragsbeschreibung
Die Plattform „Streamify“ plant die Einführung eines neuen Datenbanksystems, um Songs, Alben, Playlists und Benutzer zu verwalten. Deine Aufgabe ist es, eine Datenbank zu entwerfen, zu normalisieren, zu implementieren und mit Testdaten zu befüllen. Ziel ist es, eine Lösung zu entwickeln, die alle Anforderungen des Auftraggebers abdeckt.

---

## Aufgabenstellung

### 1. Konzeptionierung eines ER-Diagramms
- Entwerfe ein **Entity-Relationship-Diagramm**, das die Beziehungen zwischen den folgenden Elementen abbildet:
  - **Songs**: Ein Song hat Eigenschaften wie Titel, Länge (in Sekunden) und Erscheinungsjahr, sowie Interpreten.
  - **Alben**: Ein Album hat Eigenschaften wie Titel, Erscheinungsjahr, Genre und einen Interpreten.
  - **Benutzer**: Ein Benutzer hat Eigenschaften wie Benutzername, E-Mail-Adresse, Registrierungsdatum und Premium-Status (boolean reicht).
  - **Playlists**: Benutzer können Playlists erstellen und mit anderen teilen. Playlists haben Eigenschaften wie Titel und Erstellungsdatum. Eine Playlist kann von mehreren Benutzern abgespeichert werden, aber immer nur ein Benutzer ist der **Eigentümer** der Playlist. Der Eigentümer darf die Playlist bearbeiten, andere Benutzer nicht. Außerdem soll gespeichert werden, wann ein Song zur Playlist hinzugefügt wurde.
  - **Interpret**: Ein Interpret hat einen Künstlernamen.

- **Hinweis zu Beziehungstypen**:
  - In dieser Aufgabe sind mehrere n:m Beziehungen notwendig, für eine sinnvolle Umsetzung aller Requirements. Darüber hinaus dürfen eigene Annahmen getroffen werden.

### 2. Normalisierung
- Entwickle auf Basis deines ER-Diagramms die Tabellen für die Datenbank.
- **Normalisiere** die Tabellen bis in die **3. Normalform (3NF)**
- Dokumentiere den Prozess der Normalisierung (z. B. mit einer Tabelle in Excel oder einem relationalem Datenbankmodell).

### 3. Implementierung der Datenbank
- Erstelle die Datenbank und alle Tabellen mit einem SQL-Editor deiner Wahl (eg. `vscode` oder `heidisql`).
- **Datentypen**: Wähle für jede Spalte den passenden Datentyp.
- **Constraints**:
  - Füge **Primary Keys** für jede Tabelle hinzu.
  - Definiere **Foreign Keys** für die Beziehungen.
  - Setze weitere sinnvolle Constraints (z. B. `NOT NULL`, `UNIQUE`, `DEFAULT`).

### 4. Testdaten generieren
- Nutze ein Tool wie **Mockaroo**, um ausreichend Datensätze für die wichtigsten Tabellen zu generieren, damit wir diese später sinnvoll Abfragen können:
  - Mindestens 10 Benutzer.
  - Mindestens 20 Songs, verteilt auf 5 Alben.
  - Mindestens 5 Playlists mit verschiedenen Songs und Benutzern.

### 5. Abfragen
- Erstelle die folgenden SQL-Abfragen, um zu zeigen, dass die Datenbank wie gewünscht funktioniert:
  - **SELECT**: 
    1. Liste alle Songs eines bestimmten Albums, sortiert nach Titel.
    2. Finde alle Playlists eines bestimmten Benutzers, inklusive der Anzahl der Songs in jeder Playlist.
    3. Zeige den Interpreten, welcher am häufigsten in Playlists vorkommt.
  - **UPDATE**:
    1. Aktualisiere den Titel eines Albums.
    2. Setze den Premium-Status eines Benutzers auf `TRUE`, falls der Benutzer eine Playlist mit mehr als 5 Songs besitzt.
  - **DELETE**:
    1. Lösche alle Playlists, die keinen Song enthalten.
    2. Lösche alle Songs, die nicht in einer Playlist enthalten sind.

---

## Ergebnisse
Am Ende deiner Arbeit solltest du folgende Ergebnisse vorlegen:
1. **ER-Diagramm**: Handgezeichnet oder mit einem Tool erstellt (z. B. exalidraw, dbdiagram.io, draw.io).
2. **Normalisierung**: Dokumentation der Normalisierung (z. B. in Excel oder als Relationales Datenbankmodell).
3. **SQL-CREATE-Skript**: Eine Datei mit den SQL-Befehlen zum Erstellen der Datenbank und der Tabellen.
4. **Testdatensätze**: Ein SQL-Skript mit den generierten Testdaten.
5. **SQL-Abfragen**: Eine Datei mit den Abfragen.

---

## **Hinweise und Tipps**
- Denke an sinnvolle Namen für Tabellen und Spalten, die leicht verständlich sind.
- Plane sorgfältig, wie du die N:M-Beziehungen modellierst (z. B. „Playlist-Songs“ und „Playlist-Benutzer“).
- Überprüfe bei Mockaroo-Daten, dass diese mit deinen Constraints kompatibel sind.
- Die Abfragen sollten unabhängig von den Testdaten funktionieren. Überlege, wie du Bedingungen so formulierst, dass sie allgemein gültig bleiben.
- Arbeite in sinnvollen Zwischenschritten und prüfe regelmäßig, ob alles wie erwartet funktioniert.
