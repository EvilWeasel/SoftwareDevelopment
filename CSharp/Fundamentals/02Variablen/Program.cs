using System;

//Folgende Schreibweise ist veraltet und wird inzwischen automatisch von dotnet generiert bzw. berücksichtigt:

namespace _02Variablen { //Namespace ist das Projekt in dem wir uns befinden
    class Program{ //Ist die Programklasse in der wir unsere Startmethode (Main) aufrufen können
                    // Diese trägt "normalerweise" den gleichen Namen wie die cs Datei.
        public static void Main(string[] args){ //Main ist unsere Einsiegsmethode, bedeutet unser Programm startet hier.
            //Eine Variable speichert den Wert eines bestimmten Datentyps
            //Die Deklaration einer Variable erfolgt im Format:
            //<Datentyp> <Bezeichner>;
            //Variablennamen (Bezeichner) nur einmal vergeben werden dürfen.
            //Beispiel für Integer:

            int zahlEins; //Deklaration

            zahlEins = 123; //Initialisierung (erstmaligen Wertzuweisung)
            System.Console.WriteLine("Wert der Variabel nach der Initialisierung: " + zahlEins);

            zahlEins = -55 ; //Überschreiben (Neuzuweisung des Wertes)

            Console.WriteLine("Variable nach der Wertüberschreibung: " + zahlEins);

            zahlEins = zahlEins + 1 ; //Hier wird im Grunde auf den Wert von zahlEins zugegriffen(-55) und 1 dazuaddiert
            System.Console.WriteLine(zahlEins);

            zahlEins += 1; //addiert ebenfalls 1 zu dem bestehenden Wert
            System.Console.WriteLine(zahlEins);

            zahlEins ++; // Das gleiche wie oben drüber (1 wird zum bestehenden Wert dazu addiert)
            System.Console.WriteLine(zahlEins);

            zahlEins = 5 / 2;
            System.Console.WriteLine(zahlEins); // integer kann die Entsprechende Kommazahl nicht anzeigen da 
            //dieser auf Ganzzahlen begrenzt ist.

            double kommazahl = 2.5 ; //Beachte die Amerikanische Punktnotation!
            System.Console.WriteLine(kommazahl);

            kommazahl = 7.0 / 3.0;
            System.Console.WriteLine(kommazahl);

            //Datentypen:

            //Einzelnes Zeichen (Char)
            char zeichen = 'n'; // 16bit 

            //Zeichenkette (Sring) 
            string text = "Hello";//Größe ist dynamisch (es ist ein array)   
            
            //Warheitswert (Boolean)
            bool istHeuteDienstag = true; //alternativ false. Größe beträgt 1 bit wegen 2 zuständen.

            System.Console.WriteLine("Stimmt es das heute Dienstag ist? " + istHeuteDienstag);

            //Deklaration und Initialisierung mehrerer Variablen des selben Typs
            int x = 5, y = 6 , z= 2;

            //Zahlendatentypen und Speichergrößen:

            byte eineSehrKleinePositiveZahl; //byte Größe: 1Byte -> 8bit -> mögliche Werte 0 bis 255

            sbyte eineSehrkleineZahl; //8 bit mit möglichen Werten von -128 bis 127 (s steht für singed)

            short eineKleineZahl; // 16 bit (2 Bytes) mögliche Werte: -32_768 bis 32_767

            ushort eineKleinePositiveZahl; //16bit: u steht für unsigned, mögliche Wrte liegen zwischen 0 bis 65_535

            int eineMittelgroßeZahl; //Int32 -> 32bit möglichewerte 2^32 möglichkeiten (4,3 Milliarden)
            //Werte zwischen -2_147_483_648 und 2_147_483_647

            uint eineMittelgroßePositiveZahl; // mögliche Werte 0 bia 4_294_967_295

            //Zur bessern Lesbarkeit können wir auch Unterstriche nutzen, der Kompiler ignoriert diese.

            eineMittelgroßeZahl = 1_256_365;
            System.Console.WriteLine(eineMittelgroßeZahl); 


            // Wir können mit .MaxValue den größt möglichen Wert erzeugen für einen Datentyp.
            eineMittelgroßeZahl = int.MaxValue;

            System.Console.WriteLine(eineMittelgroßeZahl);

            eineMittelgroßeZahl ++; //Overflow des maxialen Int wertes. Er sprint wieder zum kleinsten Wert und Zählt

            System.Console.WriteLine(eineMittelgroßeZahl );

            long eineSehrGroßeZahl; //Int64 mögliche Werte: -9_223_372_036_854_775_808 bis 9_223_372_036_854_775_807
            ulong eineSehrGroßePositiveZahl; // 0 bis 18_446_744_073_709_551_615

            //Kommazahlen
            float eineKleineKommazahl = 0.123456789f; // 32 bit Gleitkommazahl (mit dynamischer größe)

            double eineMittelgroßeKommazahl = 0.123456789123456789d;  // 64 bit Gleitkommzahl, das d ist in C# Optional

            decimal eineFestkommazahl = 0.123456789123456789123456789m; //128 bit Festkommazahl diese wird für das 
            //rechnen mit Geld verwendet. Da wir bei einer Festkommazahl die Rundungsfehler nicht bekommen.

            
            

        }
    }
}
