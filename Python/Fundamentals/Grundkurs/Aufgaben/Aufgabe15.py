# Erstelle ein einfaches Personal verwaltungsprogramm 
# Dieses soll uns erlauben eine Kartei über einen oder mehrere Mittarbeiter zu erstellen
# mit folgenden Informationen: Name - Nachname - Urlaubstage - Array(mit Datum von Krankheitstagen) -  Funktion 
# Recherchiere wie die while schleife funktioniert diese soll es ermöglichen beliebig viele Mitarbeiterkartein zu erstellen oder diese abzurufen (sihe Grafik)

import os

def clear():
    print("\033c",end="")

def addMittarbeiter():
    neuerMittarbeiter = {}
    while(True):
        clear()
        neuerMittarbeiter["vorname"] = input("Gebe den Vornamen des Mittarbeiters an: ")
        neuerMittarbeiter["nachname"] = input("Gebe den Nachnamen des Mittarbeiters an: ")
        neuerMittarbeiter["urlaub"] = int(input("Gebe die Urlaubstage des Mittarbeiters an: "))
        neuerMittarbeiter["krank"] = []
        neuerMittarbeiter["funktion"] = input("Gebe die Funktion des Mittarbeiters an: ")
        
        while(True):
            clear()
            print("Sind folgende Informationen korrekt? (y/n):\n\n",neuerMittarbeiter)
            antwort = input()
            if antwort == "y": return neuerMittarbeiter
            elif antwort == "n": break
            else: print("Bitte gibt y oder n ein")
        


def showMittarbeiter(mittarbeiter):
    clear()
    i = 0
    print("================================")
    print("Ausgabe Mittarbeiter:\n\n")
    while(i < len(mittarbeiter)):  
        print(mittarbeiter[i]["vorname"])

        i += 1
    print("================================")
    
    if len(mittarbeiter) > 0:
        antwort = input("Gebe den namen des Mittarbeiters an für mehr Details: ")
        i = 0
        treffer = False
        while i < len(mittarbeiter):
            if antwort == mittarbeiter[i]["vorname"]:
                clear()
                print("Nachname:",mittarbeiter[i]["nachname"])
                print("Vorname:",mittarbeiter[i]["vorname"])
                print("Urlaubstage:",mittarbeiter[i]["urlaub"])
                print("Krankheitstage:",mittarbeiter[i]["krank"])
                print("Funktion:",mittarbeiter[i]["funktion"])
                treffer = True
                break
            i += 1
        
        if treffer == True: input()
        


#####################

mittarbeiter = []

while(True):
    clear()
    print("1. Erstelle neuen Mittarbeiter")
    print("2. Zeige Mittarbeiter an")
    print("3. Beende das Programm")

    antwort = input("\n\n Gebe eine Zahl zwischen 1 - 3 ein. Drücke ENTER zum bestätigen: ")

    if antwort == "1":
        mymittarbeiter = addMittarbeiter()
        if mymittarbeiter != None: mittarbeiter.append(mymittarbeiter)
    elif antwort == "2":
        showMittarbeiter(mittarbeiter)
    elif antwort == "3":
        print("Programm Beendet")
        break
    else: print("Keine gültige Antwort")


####################


