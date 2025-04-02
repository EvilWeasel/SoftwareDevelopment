#Der Datentyp Boolean ist der kleinste Datentyp uns speichert lediglich den zustand Wahr oder Falsch (True or False)
isMyNameMichael = True
isMyNameThorsten = False

print(f"Ist mein Name Michael: {isMyNameMichael}\n Ist mein Name Thorsten: {isMyNameThorsten} ")

#Logische Operatoren
b1 = True and True #der and Operator gibt True zurück wenn beide bedingungen True sind
print(b1)
b2 = not True #der not Operator negiert den darauf folgenden Wert 
print(b2)
b3 = False or True # der or Operator gibt True zurück wenn eine der beiden Bedingungen true ist
print(b3)

#Vergleichsoperatoren

x1 = 3
x2 = 6
x3 = 1
x4 = 2 + 1

b4 = x1 == x4 
print(b4)
b5 = x1 > x2
print(b5)
b6 = x4 >= x1
print(b6)
b7 = x3 <= x1
print(b7)
b8 = x1 != x2
print(b8)

print(f"{b4} {b5} {b6} {b7} {b8}")

#Kontrollstrukturen

#if else elif sind Befehle um Kontrollstrukturen aufzubauen

if(x1 > x3):
    print("x1 ist größer als x2") # Dieser befehl wird nur ausgeführt wenn die If-Bedignung True zurückgibt
else:
    print("x1 ist hier nicht größer als x2") #Wenn die if-Bedingung False ist wird die bedignung unter else ausgeführt

#Wir Nutzen nochmal die input Funktion

x1 = 3
x2 = 6
x3 = 1
x4 = 2 + 1

antwort = int(input("Gebe eine Zahl ein: "))

if(antwort == x1):
    print("Deine eingabe ist gleich x1")
elif(antwort == x3):
    print("Deine Eingabe ist 1")
elif(antwort < x2):
    print("Deine Eingabe ist kleiner als 6")
else:
    print("Deine Zahl ist weder 3 noch 1 und vermutlich größer oder gleich 6")




