import 'dart:io';
import 'package:v03/managers/hero_data_managing.dart';
import 'package:v03/models/hero_model.dart';
import 'package:v03/helpers/print_hero.dart';

Future<void> searchHeroes(HeroDataManager heroManager) async {
  print("\n-----------------------------\n");
  print("Sök bland de coola superhjältarna!");

  String? findHero;
  do {
    stdout.write("Skriv in namnet (hela eller delar av det) på hjälten du vill hitta: ");
    findHero = stdin.readLineSync();

    if (findHero == null || findHero.trim().isEmpty) {
      print("Alla hjältar har ett namn, kom igen!");
    }
  } while (findHero == null || findHero.trim().isEmpty);

//get list of superheroes
  List<HeroModel> heroes = await heroManager.getHeroList();

//filter list
  var heroSearch = heroes.where((hero) =>
      hero.name.toLowerCase().contains(findHero!.toLowerCase()));

  print("\nDessa coola hjältar matchar din sökning för'$findHero':\n");

  for (var hero in heroSearch) {
    printHero(hero);
  }
}