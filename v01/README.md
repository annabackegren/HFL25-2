Kalkylatorprojekt

- En enkel kalkylator som körs i terminalen, där man kan välja mellan operatorerna + och -

- Startas genom att stå i rootmappen (pubspec.yaml) i terminalen och köra "dart run".

****************************************************

Frågor i uppgiften:

- Hur gör man en funktion i Dart?

värdetSomFunktionenReturnerar funktionensNamn(parametrar){
    koden som körs i funktionen
    return(); om funktionen returnerar något (om inte värdet som funktionen returnerar är Void, då detta inte returnerar ngt värde)
}

Exempelfunktion:
void welcomeMessage(String name){
    print('Välkommen $name');
}