import 'dart:io';
import 'package:v03/managers/hero_data_managing.dart';
import 'package:v03/models/hero_model.dart';
import 'package:v03/models/hero_subclasses.dart';

//CHECK FOR STRING
String readString(String prompt) {
  String? value;
  do {
    stdout.write("$prompt: ");
    value = stdin.readLineSync();

    if (value == null || value.trim().isEmpty) {
      print("Du måste ange ett värde!");
    }
  } while (value == null || value.trim().isEmpty);
  return value;
}

//STRING TO INT HELPER
int toInt(String prompt) {
  int value;
  do {
    stdout.write("$prompt (0-100): ");
    String? input = stdin.readLineSync();

    if (input == null || input.isEmpty) {
      print("Du måste ange ett värde!");
      continue;
    }

    try {
      value = int.parse(input);
      break;
    } catch (e) {
      print("Du måste ange ett heltal.");
    }
  } while (true);
  return value;
}

//ADD SUPERHERO TO LIST
Future<void> addHero(HeroDataManager heroManager) async{

  print("-----------------------------");
  print("Lägg till en superhjälte!");
  print("-----------------------------");
  print("");

String name = readString("Namn");
//**powerstats**
int intelligence = toInt("Intelligens");
int strength = toInt("Styrka");
int speed = toInt("Hastighet");
int durability = toInt("Tålighet");
int power = toInt("Kraft");
int combat = toInt("Stridsförmåga");
var powerstats = Powerstats(
  intelligence: intelligence,
  strength: strength,
  speed: speed,
  durability: durability,
  power: power,
  combat: combat,
);
//**biography**
String fullName = readString("Fullständigt namn");
List<String> alterEgos = readString("Alter egos, sätt kommatecken emellan").split(',').map((s) => s.trim()).toList();
List<String> aliases = readString("Alias, sätt kommatecken emellan").split(',').map((s) => s.trim()).toList();
String placeOfBirth = readString("Födelseplats");
String firstAppearance = readString("Första framträdande");
String publisher = readString("Förlag");
String alignment = readString("Tillhörighet (good, neutral or evil)");
var biography = Biography(
  fullName: fullName,
  alterEgos: alterEgos,
  aliases: aliases,
  placeOfBirth: placeOfBirth,
  firstAppearance: firstAppearance,
  publisher: publisher,
  alignment: alignment,
);
//**appearance**
String gender = readString("Kön");
String race = readString("Ras");
List<String> height = [readString("Höjd (cm)"), readString("Höjd (ft/in)")];
List<String> weight = [readString("Vikt (kg)"), readString("Vikt (lb)")];
String eyeColor = readString("Ögonfärg");
String hairColor = readString("Hårfärg");
var appearance = Appearance(
  gender: gender,
  race: race,
  height: height,
  weight: weight,
  eyeColor: eyeColor,
  hairColor: hairColor,
);
//**work**
String occupation = readString("Yrke");
String base = readString("Bas");
var work = Work(
  occupation: occupation,
  base: base,
);
//**connections**
String groupAffiliation = readString("Grupp-tillhörighet");
String relatives = readString("Släktingar");
var connections = Connections(
  groupAffiliation: groupAffiliation,
  relatives: relatives,
);
//**image**
String imageUrl = readString("Bild-URL");
var image = HeroImage(url: imageUrl);

//create hero
var hero = HeroModel(name: name, powerstats: powerstats, biography: biography, appearance: appearance, work: work, connections: connections, image: image);

//add hero to list
await heroManager.saveHero(hero);

  print("\n${hero.name} finns nu förevigad i superhjälteregistret!");
}
