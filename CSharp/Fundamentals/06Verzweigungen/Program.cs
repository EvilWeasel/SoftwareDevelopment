//Aufgabe
//Console.WriteLine("User, wähle eine Schriftfarbe aus: (r)ot, (b)lau, (g)elb");
//Wenn der User etwas anderes als eine der drei Vorgaben auswählt, soll "Ungültige Eingabe" ausgegeben werden.
//Andernfalls soll die Konsolenschriftfarbe in die entsprechende Auswahl geändert werden. 
//(Recherhiert selbstständig, wie man mit Hilfe der Klasse Console die Schriftfarbe ändert.)
//Der User soll für die Auswahl entweder den Anfangsbuchstaben oder das ganze Wort verwenden können.



Console.WriteLine("User, wähle eine Schriftfarbe aus: (r)ot, (b)lau, (g)elb");

string farbe = (Console.ReadLine()?? "").ToLower();// Hier haben wir sogennantes Nullable Handling wenn der Rückgabewert
//aus ReadLine null ist dann wird anstelle dessen  ein Leerer string zurückgegeben (""). 


//Mehrseitige Fallauswahl



switch(farbe){
    case "r" or "rot":
        Console.ForegroundColor = ConsoleColor.Red;
        Console.WriteLine("Die Textfarbe hat sich geändert");
        break;
    case "b" or "blau":
        Console.ForegroundColor = ConsoleColor.Blue;
        Console.WriteLine("Die Textfarbe hat sich geändert");
        break;
    case "g" or "gelb":
        Console.ForegroundColor = ConsoleColor.Yellow;
        Console.WriteLine("Die Textfarbe hat sich geändert");
        break;
    default:
        Console.WriteLine("Ungültige Eingabe");
        break;
}

Console.ResetColor();


//Tenäre Operatoren ermöglichen es Wertzuweiseungen umzusetzten über booleasche abfragen.

//Beispiel 

//int x = true ? 3 : 6;

string text = (farbe == "r" || farbe == "rot")? "Die Farbe ist Rot" : "Die Farbe ist nicht rot";
//Die Rückgabe aus (farbe == "r" || farbe == "rot") ergibt true oder false und entscheidet welcher string an text übergeben
//wird
System.Console.WriteLine(text);
 

//Aufgabe 2

//Löse die Aufgabe mit der Konsolenfarbenänderung mit Tenären operatoren und maximal einem if statement
//Optinal: Versuche die Aufgabe ein zweites mal nachzubauen mit zusätzlichen Farben mit switch case.

Console.ForegroundColor = 
    (farbe == "r" || farbe == "rot") ? ConsoleColor.Red :
    (farbe == "b" || farbe == "blau")? ConsoleColor.Blue:
    (farbe == "g" || farbe == "gelb")? ConsoleColor.Yellow:
    ConsoleColor.White;

if(Console.ForegroundColor != ConsoleColor.White) System.Console.WriteLine("Die Farbe hat sich geändert.");
else System.Console.WriteLine("Ungülte Eingabe");



//Ausblick auf Moderne switch Anweisungen mit Lambda Struktur ❗(Vertiefung)

Console.ForegroundColor = farbe switch{
    "r" or "rot"    => ConsoleColor.Red,
    "b" or "blau"   => ConsoleColor.Blue,
    "g" or "gelb"   => ConsoleColor.Yellow,
    _               => ConsoleColor.White
};

//Aufgabe 3

//Der User soll angeben können, wieviel Bier in Litern getrunken wurde.
//Daraus wird die Menge des Reinalkohols in Gramm berechnet.
//Getrunkene Menge in Milliliter * Alkoholgehalt * Dichte des Ethanols.
//Bei Bier also: Getrunkene Menge in Milliliter * 0.05 * 0.8
//Der User soll auch sein Gewicht in Kilogramm angeben.
//Dann wird der Blutalkoholgehalt in Promille berechnet.
//c = A / (0.65*G)
//c ist der Promillewert, A der aufgenommene Alkohol in Gramm und G das Körpergewicht in kg.
//Es soll dann eine Ausgabe, abhängig vom Promillewert folgen:
//bis 0.3: "Noch akzeptabel. Dennoch vorsichtig sein!"
//bis 0.5: "Achtung! Hände weg vom Steuer!"
//bis 0.8: "Das ist jetzt schon ganz schön ordentlich."
//ab 0.8: "Kein Kommentar..."
//Wählen Sie passende Datentypen für die jeweils notwendigen Variablen.

double getrunkeneMenge, gewicht , alkGehalt = 0.05 , ethDichte = 0.8 , reinAlk, promille;

System.Console.WriteLine("Hallo User! Wieviel Bier hast du denn getrunken? Gib die Mengein Litern an.");
getrunkeneMenge = Convert.ToDouble(Console.ReadLine()) * 1000;
System.Console.WriteLine("Nenne mir nun noch bitte dein Gewicht in Kilogramm.");
gewicht = Convert.ToDouble(Console.ReadLine()); //Double.TryParse(Console.ReadLine(), out gewicht);

reinAlk = getrunkeneMenge * alkGehalt * ethDichte;

promille = Math.Round(reinAlk/(0.65 * gewicht),2);

System.Console.WriteLine($"{promille} Promille");

if(promille <= 0.3) System.Console.WriteLine("Noch akzeptabel. Dennoch vorsichtig sein!");
else if(promille > 0.3 && promille <= 0.5) System.Console.WriteLine("Noch akzeptabel. Dennoch vorsichtig sein!");
else if(promille > 0.5 && promille <= 0.8) System.Console.WriteLine("Das ist jetzt schon ganz schön ordentlich.");
else if(promille > 0.8) System.Console.WriteLine("Kein Kommentar");
else System.Console.WriteLine("Da ist was schiefgelaufen... probiere es erneut.");