#Eine Schleife ist ein befehl der einen Code abschnitt solange wiederholt, solange die Bedingung erfühlt ist.

#Die while Schleife
# while + Bedingung + :

while False: #Der folgende Code wird nicht ausgeführt weil hier die Bedingung False zurückgibt
    print("Das wird niemals Funktionieren")

while True: # Hier wird Schleife ewig ausgeführt weil die Bedingung True ist
    break # nachträglich hinzugefüght
    print("Bis zu Unendlichkeit und noch viel weiter !!!")
    


test = True

while test: # Auch hier bleibt die Bedingung True
    break # nachträglich hinzugefüght
    print("Ich kann einfach nicht aufhören!")

#Schleife mit gesteuerter Bedingung:
i = 0
while i < 25: #I wird geprüft ob noch kleiner als 25
    print("i ist jetzt",i)
    i += 1 #i wird jedesmal um 1 erhöht


text = ""
while text != "stop":
    text = input("Bitte gib stop ein um die Schleife zu Beenden")


#Wie kann man schleifen manuel abbrechen
while True:
    text = input("gib break ein oder stop")
    if text == "break" or text == "stop":
        break

#Schleifen lassen sich auch verschachteln zb für ein koordinatensystem:
x = 0
y = 0

while y <= 10:
    while x <= 10:
        print("x:",x,"  y:",y)
        x += 1
    y += 1
    x = 0


#for schleife für ein Kompaktere durch-itterierung

for i in range(25):
    print(i)



#Wir können mit der for-Schleife ganz einfach durch listen durch-itterrieren

obstkorb = ["Apfel", "birne", "Banane", "Zitrone", "Apfel"]

for obst in obstkorb:
    print(obst) 