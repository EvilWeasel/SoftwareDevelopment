#Programmiert einen einfachen Taschenrechner der nach zwei Zahlen fragt und fragt welche rechen-methode verwendet werden soll
# * / + -
#Für jede Rechenart soll eine eigne Funktion angelegt werden
#Basierend auf der Eingabe des Nutzers soll die entsprechende Funktion ausgelöst werden.
#Das Ergebnis soll am ende über return zurückgegeben werden..

a = float(input("Gebe die erste Zahl ein "))
b = float(input("Gebe die zweite Zahl ein "))
o = input("Gebe den Operator ein (+ - * /) ")



def addieren(a,b):
    return a + b
def subtrahieren(a,b):
    return a - b
def multiplizierne(a,b):
    return a * b
def dividieren(a,b):
    if b == 0:
        print("Das teilen durch 0 ist nicht erlaubt")
        return 0
    return a / b


if o == "+" : print(f"Das Ergebnis ist {addieren(a,b)}")
elif o == "-": print(f"Das Ergebnis ist {subtrahieren(a,b)}")
elif o == "*": print(f"Das Ergebnis ist {multiplizierne(a,b)}")
elif o == "/": print(f"Das Ergebnis ist {dividieren(a,b)}")
else: print("Eingabe ist nicht Korrekt")