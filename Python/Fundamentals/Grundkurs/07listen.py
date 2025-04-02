#Array

#Ein Array speichert mehrere Werte in einer Variabel
#Diese Werte werden in eckigen Klammern geschrieben und werden getrennt durch ein Komma
meinArray = [] #In diesem Fall haben wir ein leeres Array
meinZweitesArray = [1,2,5,6,8,2,3] # Ein Array mit Zahlen(int) 

#print(meinZweitesArray)

meinDrittesArray = ["das ist ein schöner Tag", "Es regnet nicht", "Wie ist das Wetter bei euch"] #Wir können einzelne Buchstaben Wörter oder auch 
#ganze Sätze in ein Array speichern

#In Python können wir den Datentyp von Werten in einem Array ignorrieren bzw. wir können Multiple Datentypen verwenden in einem Array

meinViertesArray = [0,"Hallo",'P',0.55]

#Um durch ein Array zu itterieren können wir den Index nutzen. Dies ist ein Zahlenwert der sich auf die Position des jeweiligen Wert bezieht 
#Der Index fängt bei 0 an und greift damir auf den ersten Wert zu bei 1 auf den zweiten usw ...
#print(meinViertesArray[3])


#Mit len können wir die Anzahl an Werten in einem Array ausgeben in form einer Zahl.
#Das können wir nutzen um zb. den letzen Wert unseres Array auszugeben in dem wir sagen das index = len(array) - 1
#-1 weil wir bei 0 anfangen

meinfuenftesArray = [1,45,8748,48,7,848,4,847,84,4,88,4,6,1,45,8748,48,7,848,4,847,84,4,88,4,6,1,45,8748,48,7,848,4,847,84,4,88,4,"tada"]
index = len(meinfuenftesArray) - 1
#print(meinfuenftesArray[index])


#Mit .append(Wert) können wir ein Wert zu einem Array hinzufügen. Dieser wird an das Ende des Array angefügt
print(meinArray)
meinArray.append("test")
meinArray.append("noch ein Wert")
meinArray.append(10)
meinArray.append(10)
print(meinArray)
#Genauso können wir aber auch Werte wieder entfernen .remove(Wert)
meinArray.remove(10) #Diese Funktion überprüft den Array und löscht den ersten passenden Wert die sie findet.

#Mit insert(Index , Wert) können wir einen neuen Wert an eine entsprechende Position plazieren
meinArray.insert(1,"eingefühgt")
print(meinArray)

#Mit .sort() können wir ein Array sotieren
print(meinZweitesArray)
meinZweitesArray.sort()
print(meinZweitesArray)
#mit .reverse() können wir die Reihenfolge umkehren
meinZweitesArray.reverse()
print(meinZweitesArray)

#Dictionary

#Ein einfaches Dictionary:
# Dictionarys werden mit geschweiften klammern deklariert
#Werte werden mit Schlüsseln gespeichert
person = {
    "name" : "Michael", #Hier ist "name" der Schlüssel und "Michael" der Wert
    "alter" : 32,
    "wohnort" : "Karlsruhe"
}

print(person["name"])

#Zum hinzufügen eines neuen Wertes mit Schlüssel reicht es diesen einfach zu definieren wie folgt:
person["beruf"] = "IT-Trainer"

print(person)

#Wir können auch schlüssel und Wert entfernen .pop(Key)

person.pop("beruf")

print(person)

#.popitem entfernt den letzten Wert und Schlüssel aus einem Dict 
person.popitem()
print(person)


#mit .update können wir eine Dict aktualisieren mit zb. neuen Werten und neuen Schlüsseln:

person.update({"hobbys":"Programmieren", "größe": 183})
print(person)


#
