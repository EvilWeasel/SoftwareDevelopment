hello = "Hello World !"
zeichen1 = hello[0] #Index 0 ist das erste zeichen der Zeichenkette -> H
zeichen2 = hello[1] #Hier ist der Wert 'e' das zweite Zeichen in der Zeichenkette

leange = len(hello) #Länge der Zeichenkette , also die Anzahl an Zeichen


print(hello[leange-1]) #Index auf das letzte Zeichen des Strings! Alternativ: hello[-1] in python

# Aufgabe:
# Ein User soll seine Postleitzahl eingeben können.
# Es wird geprüft, ob die PLZ fünf stellen hat.
# Ist dies nicht der Fall, soll "Üngültige PLZ" in der Konsole ausgegeben werden.
# Ist die PLZ korrekt, soll die zugehörige Region ermittel und in der Konsole ausgegeben werden.
# Postleitzahlenregionen:   Mit 0 oder 1 beginnend  => Ostdeutschland
#                           Mit 2 beginnend         => Nordeutschland
#                           Mit 3 beginnend         => Mitteldeutschland
#                           Mit 4 oder 5 beginnend  => Westdeutschland
#                           Mit 6,7,8 oder 9 beginnend => Süddeutschland

plz = input("Hallo User! Gib bitte deine PLZ an: ").strip()
plzOk =  len(plz) == 5 and plz.isdigit()
region = ""

if not plzOk:
    print("ungültige PLZ!")
else:
    ersteZahl = plz[0] 
    
    if ersteZahl == '0' or ersteZahl == '1':
        region = "Ostdeutschland"
    elif ersteZahl == '2':
        region = "Nordeutschland"
    elif ersteZahl == '3':
        region = "Mitteldeutschland"
    elif ersteZahl == '4' or ersteZahl == '5':
        region = "Westdeutschland"
    else:
        region = "Süddeutschland"

if plzOk:
    #Es gibt verschiedene möglichkeiten der Ausgabe:
    #Interpolation:
    print(f"Deine PLZ lautet {plz} du kommst aus {region}.")

    #Konkatination:
    print("Deine PLZ lautet " + plz + " du kommst aus " + region)

    #String Formatierung mit Komposition
    print("Deine PLZ lautet {} du kommst aus {}".format(plz , region))
