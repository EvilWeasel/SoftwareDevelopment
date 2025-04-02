# Das ist ein kommentar
#Konole Ein-Ausgabe
print("Hallo Welt")
eingabe = input("Gebe etwas ein: ")

#Datentypen

zahl = 10
zahl2:int
zahl3 = int("10")

# Arrays und Objekte

zahlen = [1,2,3,4,5,6,7]
meinArray = [16,"Hallo Welt", 0.44]

student = {"name":"Max", "alter":18} #Objekten

#Schleifen

#for Schleife
for i in range(10):
    print(i)

#foreach
for i in zahlen:
    print("foreach Ergebnis:",i)

#while schleife

z1 = 0
while z1 < 5:
    print(z1)
    z1 += 1

#Do-while schleife
z2 = 0
while True:
    print(z2)
    z2 += 1
    if z2 >= 5:
        break

#formatierteStrings

meinString = f"meine Variabel ist {z1} und {z2}"

#Funktionen

def sag_hallo():
    print("Hallo")

sag_hallo()


def addieren(x,y):
    return x + y

print(addieren(5,6))


def addieren(*zahlen):
    return sum(zahlen)

print(addieren(1,2,3,5,8,6))

#Klassen

class Person:
    def __init__(self, name:str, alter:int):
        self.name = name #Öffentlich / public
        self.alter = alter

class Person2:
    def __init__(self, name:str, alter:int):
        self._name = name #protected 
        self.__alter = alter #private


class Person3:
    def __init__(self, name:str, alter:int):
        self.name = name #Öffentlich / public
        self.alter = alter
    
    def sage_Hallo(self):
        print(f"Hallo {self.name}, du bist {self.alter} Jahre alt")


person = Person3("Thomas", 24)
person.sage_Hallo()

#Vererbung

class Student(Person3):
    def __init__(self,name , alter, nummer):
        super().__init__(name, alter)
        self.nummer = nummer

student1 = Student("Alex", 19 , 555555)

print(f"{student1.name} ist {student1.alter} Jahre alt und hat die Nummer {student1.nummer}")

from abc import ABC , abstractmethod

class Tier(ABC):
    @abstractmethod
    def mach_ein_geräusch(self):
        pass


class Hund(Tier):
    def mach_ein_geräusch(self):
        print("Wau Wau")


tier = Hund()
tier.mach_ein_geräusch()

#Exeption Handling

try:
    zahl = int("abcd")
except ValueError as e:
    print("Der Fehler ist:",e)
finally:
    print("Abschließende Operation")

#Lambda Funktionen

qudaratt = lambda x: x * x
print(qudaratt(5))

#Multithreading 
import threading

def beispiel():
    print("Ich laufe in einem eigenen Thread")

thread = threading.Thread(target=beispiel)
thread.start() 

#Asynchronität

import asyncio

async def beispiel2():
    await asyncio.sleep(3)
    print("Ausgabe nach 3 Sekunden")

asyncio.run(beispiel2())

#Dateioperatioen

with open("datei.txt", "w") as datei:
    datei.write("Hallo Welt")

with open("datei.txt", "r") as datei:
    print(datei.read())