# Ein Mitarbeiter hat einen Verkaufsbonus von 200 Euro. Überprüfe, ob der Bonus über 150 Euro liegt. 
# Wenn ja, erhöhe ihn um 20 Euro und gib den neuen Bonus aus. Andernfalls gib aus, dass der Bonus gleich bleibt.

bonus = 150
if bonus > 150:
    bonus = bonus + 20
    print(f"Der neue Bonus beträgt {bonus} Euro")
else:
    print("Der Bonus bleibt gleich")