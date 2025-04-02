# Ein Mitarbeiter hat 10 Urlaubstage. Er plant, 3 Urlaubstage zu nehmen. Überprüfe, ob er genügend Urlaubstage hat. 
# Wenn ja, ziehe die Urlaubstage ab und gib die verbleibenden Tage aus. Andernfalls informiere ihn darüber, dass er 
# nicht genug Urlaubstage hat.

urlaub = 10
geplantUrlaub = (int)(input("Wie viel urlaub möchtest du nehmen: "))
if geplantUrlaub <= urlaub:
    urlaub = urlaub - geplantUrlaub
    print(f"Verbleibende Urlaubstage: {urlaub} Tage")
else:
    print("Nicht genug Ulaubstage verfügbar")

