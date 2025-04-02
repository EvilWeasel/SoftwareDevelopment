import requests 
import numpy as  np
import pandas as pd
import matplotlib.pyplot as plt


header= {
            "Accept": "text/json"            
        }
url = "https://api.coindesk.com/v1/bpi/historical/close.json?start=2024-01-01&end=2024-01-30"

request = requests.get(url, headers=header)
prices = request.json()["bpi"]

if prices and prices != {}:
    dates = np.array(list(prices.keys())) #Umwandlung von dict mit schlüssel in eine Liste und diese umgewndelt in ein numpyarray damit man damit besser arbeiten kann
    values = np.array(list(prices.values()))#gleich für Werte
    
    mean_price = np.mean(values)
    max_price = np.max(values)
    min_price = np.min(values)

    print("Durchschnittspreis: ",mean_price,"US-Dollar")
    print("Max preis: ", max_price,"US-Dollar")
    print("Min preis: ", min_price,"US-Dollar")

    df = pd.DataFrame({
                        "Datum": dates,
                        "Preis": values
                    })

    df['Datum'] = pd.to_datetime(df['Datum'])
    df.set_index("Datum", inplace=True)


    print(" ===== Datenausgabe =====")
    print(df.describe())

    plt.figure(figsize=(10,5))
    plt.plot(df.index, df["Preis"],  marker="o" ,linestyle="-", label="Bitcoin-Preis")
    plt.xlabel("Datum")
    plt.ylabel("Preis in US-Dollar")
    plt.title("Bitcoin Preisentwicklung im Januar 2024")
    plt.show()

else:
    print("Keine Daten verfügbar")