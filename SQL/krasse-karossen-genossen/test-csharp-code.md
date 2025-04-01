# CSharp Code in diesem Ordner ausführen

## Projekte

1. `csharp-test` -> Erklärung von Scopes von Variablen
2. `sql-injectin-csharp` -> Demonstration einer von `SQL-Injection` vulnerablen App

## Programme starten

1. Den Ordner, in dem das Projekt gespeichert ist, mit der Konsole (eg. Windows Terminal) öffnen.
2. `dotnet restore` ausführen, um die Abhängigkeiten (`MySqlConnector`) zu installieren.
3. `dotnet build` ausführen, um die `.exe` zu bauen.

Danach kann das Programm mit `dotnet run`, oder einem doppelklick auf die `.exe` in `./bin/debug/net8.0/sql-injection-csharp.exe`, ausgeführt werden.

## SQL-Injection Code

Beim der Eingabe der Autofarbe, muss aus einem String in dem `UPDATE` Statement escaped werden.
Ein Beispiel: `MeineLieblingsfarbe '; DROP DATABASE krassekarossengenossen; --`