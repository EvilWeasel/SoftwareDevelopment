# Ein Mitarbeiter ist 25 Jahre alt. Überprüfe, ob er das Rentenalter von 65 Jahren erreicht hat. 
# Wenn nicht, berechne, wie viele Jahre ihm bis zur Rente fehlen und gib das aus. Andernfalls gib 
# aus, dass der Mitarbeiter bereits im Ruhestand ist.

alter = 25
rentenalter = 65

if alter >= rentenalter:
    print("Der Mitarbeiter ist bereits im Ruhestand")
else:
    jahreBisRente = rentenalter - alter
    print(f"Der Mitarbeiter hat noch {jahreBisRente} Jahre bis zur Rente.")