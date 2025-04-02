# Ein Mitarbeiter verdient 3000 Euro. Überprüfe, ob sein Gehalt unter 2500 Euro liegt. 
# Wenn ja, erhöhe sein Gehalt um 10% und gib das neue Gehalt aus. Andernfalls gib aus, 
# dass keine Gehaltserhöhung nötig ist.


verdienen = 3000
if verdienen < 2500:
    verdienen = verdienen * 1.1
    print(f"Sein neues Gehalt beträgt: {verdienen}")
else:
    print("Keine Gehaltserhöung nötig")