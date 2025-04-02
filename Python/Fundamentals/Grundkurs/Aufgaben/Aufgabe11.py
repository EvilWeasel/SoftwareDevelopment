# Der User soll Ihnen mitteilen, ob das Wetter gerade "sonnig" oder "regnerisch" ist. 
# Auch die Temperatur soll der User angeben können.
# Liegt die Temperatur bei oder über 20°C und es ist sonnig, empfehlen sie dem User ein T-Shirt zu tragen.
# Liegt die Temperatur unter 20°C und es ist sonnig, empfehlen Sie eine Jacke anzuziehen.
# Bei regnerischem Wetter müssen ebenfalls die Kleiderempfehlung ausgesprochen werden die sich nach der jeweiligen Temperatur 
# richten.
# Zusätzlich soll der User drauf hingewiesen werden, dass ein Regenschirm mitgenommen werden soll.

wetter = input("Wie ist das Wetter? (sonnig/regnerisch): ").strip().lower()
temperatur = int(input("Wie hoch ist die Temperatur"))

if wetter == "sonnig" and temperatur >= 20:
    print("Es ist sonnig und warm. Zieh ein T-shirt an")
elif wetter == "sonnig" and temperatur < 20:
    print("Es ist sonnig aber kühl. Zien eine Jacke an")
elif wetter == "regnerisch":
    if temperatur >= 20:
        print("es ist regnerisch und warm. Du kannst ein T-Shirt anziehen aber vergiss den Regenschirm nicht.")
    else:
        print("Es ist regnerisch und kalt. Ziehe dir eine Jacke an und vergiss nicht den Regenschirm")
else:
    print("Falsche Eingabe!")

