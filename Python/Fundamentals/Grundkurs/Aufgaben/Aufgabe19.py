#Benutze den Code aus Aufgabe 15 und sorge dafür das Personen gespeichert werden in einer json-datei
#und auch wieder abgerufen werden können automatisch beim start des Programms

# Erstelle ein einfaches Personal verwaltungsprogramm 
# Dieses soll uns erlauben eine Kartei über einen oder mehrere Mittarbeiter zu erstellen
# mit folgenden Informationen: Name - Nachname - Urlaubstage - Array(mit Datum von Krankheitstagen) -  Funktion 
# Recherchiere wie die while schleife funktioniert diese soll es ermöglichen beliebig viele Mitarbeiterkartein zu erstellen oder diese abzurufen (sihe Grafik)

#Schreibe eine Funktion für das Programm MittarbeiterVerwaltung die es ermöglicht einen bestehnden Mittarbeiter zu bearbeiten
#Optional: schreibe eine funktion die es ermöglicht den gegenwertigen Tag als Krankheitstag bei einem Mittarbeiter einzutragen.

import os
import json
from datetime import datetime

def clear():
    print("\033c", end="")

def saveMittarbeiter(mittarbeiterliste):
    with open("mittarbeiter.json", "w", encoding="utf-8") as file:
        json.dump({"personen": mittarbeiterliste}, file, indent=4)

def loadMittarbeiter():
    if os.path.exists("mittarbeiter.json"):
        with open("mittarbeiter.json", "r", encoding="utf-8") as file:
            return json.load(file).get("personen", [])
    return []

def addMittarbeiter():
    neuerMittarbeiter = {
        "vorname": input("Gebe den Vornamen des Mitarbeiters an: "),
        "nachname": input("Gebe den Nachnamen des Mitarbeiters an: "),
        "urlaub": int(input("Gebe die Urlaubstage des Mitarbeiters an: ")),
        "krank": [],
        "funktion": input("Gebe die Funktion des Mitarbeiters an: ")
    }
    return neuerMittarbeiter

def showMittarbeiter(mittarbeiter):
    clear()
    if not mittarbeiter:
        print("Keine Mitarbeiter vorhanden.")
        input("Drücke ENTER, um fortzufahren...")
        return

    print("================================")
    print("Mitarbeiter-Liste:")
    for i, m in enumerate(mittarbeiter):
        print(f"{i+1}. {m['vorname']} {m['nachname']}")
    print("================================")

    auswahl = input("Gebe die Nummer eines Mitarbeiters für Details ein oder ENTER zum Zurückgehen: ")
    if auswahl.isdigit():
        index = int(auswahl) - 1
        if 0 <= index < len(mittarbeiter):
            m = mittarbeiter[index]
            clear()
            print(f"Vorname: {m['vorname']}\nNachname: {m['nachname']}\nUrlaubstage: {m['urlaub']}\nKrankheitstage: {m['krank']}\nFunktion: {m['funktion']}")
            input("Drücke ENTER, um zurückzugehen...")
        return index
    
def editMittarbeiter(mittarbeiter):
    index = showMittarbeiter(mittarbeiter)
    if 0 <= index < len(mittarbeiter):
        m = mittarbeiter[index]
        print("Lasse ein Feld leer, um es nicht zu ändern.")
        m["vorname"] = input(f"Neuer Vorname ({m['vorname']}): ") or m["vorname"]
        m["nachname"] = input(f"Neuer Nachname ({m['nachname']}): ") or m["nachname"]
        urlaub = input(f"Neue Urlaubstage ({m['urlaub']}): ")
        m["urlaub"] = int(urlaub) if urlaub.isdigit() else m["urlaub"]
        m["funktion"] = input(f"Neue Funktion ({m['funktion']}): ") or m["funktion"]
        saveMittarbeiter(mittarbeiter)

def addKrankheitstag(mittarbeiter):
    index = showMittarbeiter(mittarbeiter)
    if 0 <= index < len(mittarbeiter):
        heute = datetime.today().strftime('%Y-%m-%d')
        mittarbeiter[index]["krank"].append(heute)
        saveMittarbeiter(mittarbeiter)
        print(f"Krankheitstag {heute} hinzugefügt.")
        input("Drücke ENTER, um fortzufahren...")

def main():
    mittarbeiter = loadMittarbeiter()
    while True:
        clear()
        print("1. Neuen Mitarbeiter erstellen")
        print("2. Mitarbeiter anzeigen")
        print("3. Mitarbeiter bearbeiten")
        print("4. Krankheitstag hinzufügen")
        print("5. Beenden")
        auswahl = input("Wähle eine Option (1-5): ")

        if auswahl == "1":
            mittarbeiter.append(addMittarbeiter())
            saveMittarbeiter(mittarbeiter)
        elif auswahl == "2":
            showMittarbeiter(mittarbeiter)
        elif auswahl == "3":
            editMittarbeiter(mittarbeiter)
        elif auswahl == "4":
            addKrankheitstag(mittarbeiter)
        elif auswahl == "5":
            break
        else:
            print("Ungültige Auswahl. Versuche es erneut.")
            input("Drücke ENTER, um fortzufahren...")

if __name__ == "__main__":
    main()


