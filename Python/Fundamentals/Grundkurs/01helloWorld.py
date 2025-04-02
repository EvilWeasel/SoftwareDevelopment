#Ich bin ein Kommentar
#Kommetare werden nicht mitkompiliert oder mitinterpretiert, unser Programm wird also nicht langasamer

#Der Print befehl erlaubt es uns etwas in die Konsole auszugeben.
print("Hello World")
print("Konsole, schreibe noch eine Zeile")
#Mit \n können wir einen Umbruch erzeugen
print("Das ist ein \n Umbruch")



#Logische Operatoren:
# and -> Beide Bedingungen müssen True sein.
# or  -> Mindestens eine der Bedingungen muss True sein.
# not -> Kehrt den Wert einer Bedingung um.

# Beispiele für "and":
print(True and True)   # True, weil beide True sind.
print(True and False)  # False, weil eine Bedingung False ist.
print(False and False) # False, weil beide False sind.

# Beispiele für "or":
print(True or True)    # True, weil mindestens eine Bedingung True ist.
print(True or False)   # True, weil mindestens eine Bedingung True ist.
print(False or False)  # False, weil beide False sind.

# Beispiel für "not":
print(not True)        # False, weil True umgekehrt wird.
print(not False)       # True, weil False umgekehrt wird.

# *** Kombinierte Bedingungen ***
# Es ist möglich, mehrere logische Operatoren zu kombinieren.

# Beispiel mit "and" und "or":
print(True and (True or False))  # True, weil "True or False" True ergibt, und True and True ebenfalls True ergibt.
print((not True) or (False and True))  # False, weil "not True" False ist und "False and True" ebenfalls False ist.

# *** Wahrheitstabelle für Boolesche Operatoren ***
# Für "and":
# True and True   -> True
# True and False  -> False
# False and True  -> False
# False and False -> False

# Für "or":
# True or True    -> True
# True or False   -> True
# False or True   -> True
# False or False  -> False

# Für "not":
# not True        -> False
# not False       -> True
