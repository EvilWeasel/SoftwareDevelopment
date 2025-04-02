# Der User soll angeben können, wieviel Bier in Litern getrunken wurde.
# Daraus wird die Menge des Reinalkohols in Gramm berechnet.
# Getrunkene Menge in Milliliter * Alkoholgehalt * Dichte des Ethanols.
# Bei Bier also: Getrunkene Menge in Milliliter * 0.05 * 0.8
# Der User soll auch sein Gewicht in Kilogramm angeben.
# Dann wird der Blutalkoholgehalt in Promille berechnet.
# c = A / (0.65*G)
# c ist der Promillewert, A der aufgenommene Alkohol in Gramm und G das Körpergewicht in kg.
# Es soll dann eine Ausgabe, abhängig vom Promillewert folgen:
# bis 0.3: "Noch akzeptabel. Dennoch vorsichtig sein!"
# bis 0.5: "Achtung! Hände weg vom Steuer!"
# bis 0.8: "Das ist jetzt schon ganz schön ordentlich."
# ab 0.8: "Kein Kommentar..."

bier = float(input("Wie viel Bier hast du in Litern getrunken?: "))
gewicht = float(input("Wie viel wiegst du in Kilogramm?: "))

bierMl = bier * 1000
alkohol = bierMl * 0.05 * 0.8

promille = alkohol / (0.65 * gewicht)

print(f"Dein Alkohol im Blut beträgt {promille:.2f}%")

if promille <= 0.3:
    print("Noch akzeptabel. Dennoch vorsichtig sein!")
elif promille <= 0.5:
    print("Achtung! Hände weg vom Steuer!")
elif promille <= 0.8:
    print("Das ist jetzt schon ganz schön ordentlich.")
else:
    print("Kein kommentar ...")