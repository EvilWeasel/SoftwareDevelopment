# Das Unternehmen hat eine Liste von Mitarbeitern: ["Anna", "Bernd", "Clara", "David"]. Lass den Benutzer einen Namen 
# eingeben und überprüfe, ob dieser in der Liste ist. Wenn ja, gib „Mitarbeiter gefunden“ aus. Andernfalls „Mitarbeiter 
# nicht gefunden“.

mitarbeiterliste = ["Anna", "Bernd", "Clara", "David"]
name = input("Bitte geben Sie einen Vornamen ein: ")

if name in mitarbeiterliste:
    print("Mitarbeiter gefunden!")
else:
    print("Mitarbeiter nicht gefunden!")

    