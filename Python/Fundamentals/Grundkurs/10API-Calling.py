#Eine API ist eine Schnittstelle von einem Dienst oder Anbieter der uns Informationen bereitstellt
#In der Regel sind diese Informationen Kostenpflichtig.
#Wie konzentrierne uns hier auf die HTTP APIs auch REST-APIS gennant

import requests # mit der lib requests können wir HTTP anfragen an einen Server richten
import time

while True:
    data = requests.get("https://api.chucknorris.io/jokes/random")  #Hier machen wir eine HTTP request auf die API von der chucknorris API

    print(data.json()) #Bei einer positiven Request mit HTTP 200 , bekommen wir eine json zurück und können mit .json diese in ein dict umwandeln
    time.sleep(1)