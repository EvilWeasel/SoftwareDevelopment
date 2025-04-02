# Das Unternehmen hat drei Abteilungen: HR, IT und Marketing. Lass den Benutzer die Abteilung eingeben und gib eine passende 
# Nachricht aus. Wenn die Abteilung „IT“ ist, gib „Willkommen im Technikteam!“ aus. Für „HR“ gib „Willkommen im Personalbereich!“ 
# aus und für „Marketing“ „Willkommen im Marketingteam!“. Für alle anderen Abteilungen gib „Abteilung nicht gefunden!“ aus.

abteilung = input("Geben Sie ihre Abteilung ein (HR , IT oder Maketing): ")
if abteilung == "IT":
    print("Willkommen im Technikteam!")
elif abteilung == "HR":
    print("Willkommen im Personalbereich!")
elif abteilung == "Marketing":
    print("Willkommen im Marketingteam!")
else:
    print("Abteilung nicht gefunden!")