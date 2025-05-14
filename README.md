# tut2_14052025

# Aufgabenstellung

## 1. Instanz von MockDatabase erstellen

Erstelle eine Instanz der Klasse MockDatabase und speichere sie in einer Variablen, um auf die Datenbank-Funktionen zugreifen zu können.

## 2. Alle Transaktionen vom MockDatabase holen

Rufe die Methode die passende Methode der MockDatabase-Instanz auf und speichere die zurückgegebenen Transaktionen in einer lokalen Variable

## 3. Aktuelles Guthaben anzeigen lassen

Verwende eine passende Methode der MockDatabase-Instanz, um das aktuelle Guthaben zu berechnen und anzuzeigen. (Über Formatierung musst du dir hier keine Sorgen machen 😉).

## 4. Transaktionen in der Liste anzeigen lassen

Implementiere die ListView.builder, um die Transaktionen aus der MockDatabase-Instanz anzuzeigen.

Verwende eine Hilfsvariable, um auf die jeweilige Transaktion (transactions[index]) zuzugreifen

## 5. Beschreibungen und Summe einbauen

Zeige die Beschreibung (description) jeder Transaktion in der title-Eigenschaft des ListTile-Widgets an.

Zeige die Summe (amount) jeder Transaktion in der trailing-Eigenschaft des ListTile-Widgets an. Formatiere den Betrag mit deutscher Währungsformatierung (de_DE).

## 7. Bonus: Farbe der Transaktions-Summe anpassen

Wenn die Transaktions-Summe negativ ist, soll die Schriftfarbe rot sein.
Wenn die Transaktions-Summe positiv ist, soll die Schriftfarbe grün sein.
