# Ein Mitarbeiter möchte sich für eine Schulung anmelden. Das Unternehmen hat 10 Plätze. Lass den Benutzer die 
# Anzahl der Anmeldungen eingeben. Wenn die Anmeldungen weniger als 10 sind, gib aus, dass noch Plätze verfügbar 
# sind. Wenn die Anzahl genau 10 ist, gib „Alle Plätze sind belegt“ aus. Bei mehr als 10 Anmeldungen gib „Zu viele 
# Anmeldungen“ aus.

plaetze = 10
anmeldungen = int(input("Bitte Anzahl der Anmeldungen eingeben: "))
if anmeldungen < plaetze:
    print("Es sind noch Plätze verfügbar.")
elif anmeldungen == plaetze:
    print("Alle Plätze sind belegt")
else:
    print("Zu viele Anmeldungen.")