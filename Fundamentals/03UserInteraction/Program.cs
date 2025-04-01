Console.WriteLine("Hallo User! Bitte gib ein Wort ein: ");

//Mit der Console.ReadLine();-Methode kann man die nächste Zeile, in unserem Fall , was der User eingibt einlesen.
//Es wird automatisch als Nullable-String, also als Zeichenkette eingelesen.
//Diese Zeichenkette muss in einer Variable gespeichert werden. Der Wert, also der Inhalt der variable, ist zu laufzeit
//des Programms im Arbeitsspeicher vorhanden.

string? userInput = Console.ReadLine();

//Ausgabe des im Arbeitsspeicher vorliegenden Wertes über die Variable userInput
Console.WriteLine("Du hast folgendes eingegeben: " + userInput);

//Aufgabe: Der User sooll seinen Vornamen, seinen Nachnamen, E-Mail_Adresse, Hobby und alter eingeben können.
//Die gespeicherten Daten sollen in der Konsole ausgegeben werden.

Console.WriteLine("Gib bitte deinen Vornamen ein: ");
string? vorname = Console.ReadLine();

Console.WriteLine("Gib bitte deinen Nachnamen ein: ");
string? nachname = Console.ReadLine();

Console.WriteLine("Gib bitte deine E-Mail an: ");
string? email = Console.ReadLine();

Console.WriteLine("Gib bitte deine Hobbys an: ");
string? hobby = Console.ReadLine();

Console.WriteLine("Gib bitte dein Alter an: ");
string? alter = Console.ReadLine();

Console.WriteLine("Du bist " + vorname + " " + nachname + ".\n Du hast die E-Mail-Adresse: "
                + email + ".\n Deine Hobbys sind " + hobby + ".\n Und dein Alter ist " + alter
                + " Jahre alt.");