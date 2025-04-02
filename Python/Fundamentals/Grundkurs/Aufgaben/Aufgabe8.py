# Ein Team hat 5 Mitglieder. Wenn das Team mehr als 6 Mitglieder hat, gib „Das Team ist überbesetzt“ aus. 
# Wenn es genau 6 Mitglieder hat, gib „Das Team hat die optimale Größe“ aus. Ansonsten gib „Das Team hat 
# Platz für weitere Mitglieder“ aus.

team = 5
if team > 6:
    print("Das Team ist überbesetzt")
elif team == 6:
    print("Das Team hat die optimale Größe")
else:
    print("Das Team hat Platz für weitere mitglieder")