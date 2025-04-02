# Ein Projekt hat verschiedene Phasen: „Planung“, „Entwicklung“ und „Fertigstellung“. Lass den Benutzer den aktuellen Status
# eingeben und gib eine Nachricht aus, die je nach Phase unterschiedlich ist. Beispiel: Wenn der Status „Entwicklung“ ist, 
# gib „Das Projekt ist in der Entwicklungsphase.“ aus.

status = input("Gebe den aktuellen Projektstatus an (Planung, Entwicklung oder Fertigstellung): ")
if status == "Planung":
    print("Das Projekt ist in der Planungsphase")

elif status == "Entwicklung":
    print("Projekt ist in der Entwicklungsphase")

elif status == "Fertigstellung":
    print("Das Projekt ist in der Fertigstellungsphase")

else:
    print("Unbekannter Status!")
