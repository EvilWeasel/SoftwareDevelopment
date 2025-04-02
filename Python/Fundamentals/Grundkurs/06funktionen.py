

#Eine Funktion ist ausgelagerter Code der mit hilfe eines Bezeichners abgerufen werden kann.
#Aufbau einer Funktion ist:  def + Bezeichner + () + : -> Gefolgt von zu ausführenden Code
def main():
    print("Aufruf meiner Funktion")

#Eine Funktion muss aufgerufen werden damit der Code in ihr ausgeführt wird
#Eine Funktion lässt sich belibig oft aufrufen
#main()
#main()


#Parameter sind Variabeln bzw Werte die wir einer Funktion übergeben können damit diese damit Arbeiten kann.
def multiplikator(i):
    i = i * 100
    print(i)

multiplikator(25)
multiplikator(635)
multiplikator(77)

def ausgabe(name): #Wir können unsere Parameter nennen wie wir wollen.
    print(f" Dein Name ist also {name}")

#ausgabe(input("Gebe bitte deinen Namen ein: ")) 

#Wir können auch mehere Parameter übergeben

def person(name, alter, wohnort):
    print(f"Du bist {name} und {alter} Jahre alt und du kommst aus {wohnort}")

#person("Michael", 32 , "Hamburg")
#person("Thorsten" , 45 , "Hanover")
#person("Karsten", 28 , "München")
#person("Lisa", 30, "Berlin")


#Rückgabewerte sind Informationen die unsere Funktion zurückgeben.
#i = input("Eingabe")  # In diesem Fall wäre der Rückgabewert das was wir in die Konsole eingeben

def funktion1(a,b):
    neuerWert = a * b
    return neuerWert

i = funktion1(5,6)

def funktion2(i):
    return f"Das ergebnis aus der Funktion 1 ist {i}"


print("Ausgabe von Funktion 2: \n" + funktion2(i))