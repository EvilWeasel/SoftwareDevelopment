#Für die Aufgabe16 soll der bohnenstand und der Wasserstand sowie der Ablauf gespeichert werden und beim start abgerufen werden.


import time
from datetime import datetime
import random
import json

bohnen = 0
wasser = 0
maxbohnen = 100
maxwasser = 100
maxwasser = 100
ablauf = []
anzahlkaffee = 0

def main():
    global anzahlkaffee , bohnen , wasser , ablauf

    try:
        with open("Kaffemaschine.json", "r" , encoding="utf-8") as file:
            data = json.load(file)
        anzahlkaffee = data['entkalkungsschritt']
        bohnen = data['bohnen']
        wasser = data['wasser']
        ablauf = data['ablauf']
    except:
        print("Keine Daten vorhanden")
    
    


    while True:
        clear()
        print("=====================")
        print("1 - Kaffee zubereiten")
        print("2 - Ablauf anzeigen")
        print("=====================")

        antwort = input("Drücke 1 oder 2: ")
        if antwort == "1": kaffeeZubereitung()
        elif antwort == "2": anzeigeAblauf()
        else:
            clear() 
            print("Eingabe innkorrekt!")
            time.sleep(1)

        if anzahlkaffee >= 3: entkalkung()

def anzeigeAblauf():
    global ablauf
    clear()
    print("========= JOURNAL ==========")
    for i in ablauf:
        print(i)
    print("============================")
    input()

def kaffeeZubereitung():
    global wasser , bohnen , ablauf , anzahlkaffee

    if bohnen < 20:
        bohnenAuffüllen()
    if wasser < 5:
        wasserAuffüllen()

    bohnen -= 20 
    wasser -= 5
    
    clear()
    
    anzeige = ""
    for i in range(20):
        print("Kaffee wird zubereitet ...")
        print(anzeige)
        anzeige += "|"
        time.sleep(0.2)
        clear()
    
    anzeige = "Kaffee wurde zubereitet."
    print(anzeige)
    time.sleep(2)
    ablauf.append(f"{anzeige} {datetime.now().strftime("%Y-%m-%d %H:%M:%S")}")
    anzahlkaffee += 1
    speicherKaffeemaschine()

def entkalkung():
    global anzahlkaffee , ablauf
    clear()
    print("Die Maschine muss enkalkt werden ...")
    while True:
        antwort = input("möchtest du die Maschine entkalken? (y/n)")
        if antwort == "y":
            clear()        
            anzeige = ""
            for i in range(20):
                print("Die Maschine wird entkalkt, bitte warten ...")
                print(anzeige)
                anzeige += "|"
                time.sleep(0.5)
                clear()
            anzahlkaffee = 0
            anzeige = "Maschine wurde entkaklt"
            time.sleep(2)
            ablauf.append(f"{anzeige} {datetime.now().strftime("%Y-%m-%d %H:%M:%S")}")
            speicherKaffeemaschine()
            break
        elif antwort == "n": 
            clear()
            print("Bitte entkalken Sie die Maschine zeitnahe!")
            time.sleep(2)
            break
        else:
            clear()
            print("Falsche eingabe ...")
            time.sleep(0.5)

def bohnenAuffüllen():
    global ablauf , bohnen , maxbohnen
    clear()
    print(f"Achtung! Die aktuelle Bohnenmenge von {bohnen} Bohnen reicht nicht aus für einen Kaffee.")
    input("Drücke eine Taste um den Behälter zu befüllen ...")
    clear()
    
    addbohnen = random.randrange(20 - bohnen, maxbohnen , 6 ) 
    anzeige = f"{addbohnen } Bohnen wurden hinzugefügt."
    bohnen += addbohnen
    print(anzeige)
    time.sleep(2)
    ablauf.append(f"{anzeige} {datetime.now().strftime("%Y-%m-%d %H:%M:%S")}")

def wasserAuffüllen():
    global ablauf, wasser, maxwasser
    clear()
    print(f"Achtung! Die aktuelle Wassermenge von {wasser} Wasser reicht nicht aus für einen Kaffee.")
    input("Drücke eine Taste um den Behälter zu befüllen ...")
    clear()
    
    addwasser = random.randrange(20 - wasser, maxwasser , 6 ) 
    anzeige = f"{addwasser } Wassereinheiten wurden hinzugefügt."
    wasser += addwasser
    print(anzeige)
    time.sleep(2)
    ablauf.append(f"{anzeige} {datetime.now().strftime("%Y-%m-%d %H:%M:%S")}")

def clear():
    print("\033c", end="")

def speicherKaffeemaschine():
    global ablauf , anzahlkaffee, bohnen , wasser

    mydict = {
                "bohnen":bohnen,
                "wasser":wasser,
                "entkalkungsschritt":anzahlkaffee,
                "ablauf":ablauf

            }
    with open("Kaffemaschine.json", "w", encoding="utf-8") as file:
        json.dump(mydict, file, indent=4)
    
main()