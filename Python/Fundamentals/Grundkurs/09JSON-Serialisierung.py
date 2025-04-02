#JSON ist ein Dateiformat für die speicherung oder den Austausch von Informationen.
#JSON kommt ursptünglich von JavaScript und bedeutet: JavaScript Object Notation
import json

jsontext = '{"name":"Michael" ,"alter": 32 , "wohnort":"Karlsruhe"}' #Unser text ist zwar im json-Format aber ohne die Json-lib kann python diesen nicht einfach auslesen.
meindict = json.loads(jsontext) # mit json load wandeln wir den string(text) in ein dictonary um bzw ein objekt 

#print(meindict)
personen= {
            "person1":
            {
                "name":"klaus",
                "alter":40,
                "Funktion":"Berater",
                "Urlaub":25
            },
            "person2":
            {
                "name":"Hans",
                "alter":34,
                "Funktion":"Consulter",
                "Urlaub":20
            }
        }

with open("jsonTestDatei.json", "r", encoding="utf-8") as file: # mit with können gesichert eine Datei öffnen und wieder schließen wobei dabei die ressourcenverfügbarkeit 
    #kontroliert wird. Hier lesen wir mit r aus dem entsprechem Pfad den Inhalt heraus im utf-8 Format und speichern ihn in der variabel file ab 
    meinZweitesDict = json.load(file) # mit load können wir Dateiinformationen im json Format in ein dict umwandeln

#print(meinZweitesDict["person1"]["name"]) 


personen["person3"] = meindict
with open("jsonTestDatei.json", "w", encoding="utf-8") as file:
    json.dump(personen, file, indent=4)

