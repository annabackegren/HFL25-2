import 'package:v03/managers/hero_data_managing.dart';
import 'package:v03/models/hero_model.dart';
import 'package:v03/helpers/print_hero.dart';

Future<void> showHeroes(HeroDataManager heroManager) async {
  print("\n-----------------------------\n");
  print("Visar superhjältar sorterade på styrka (starkast först): ");
  print("-----------------------------\n");

//list all heroes
List<HeroModel> heroes = await heroManager.getHeroList();

//sort heroes
heroes.sort((a, b) => b.powerstats.strength.compareTo(a.powerstats.strength));

//print heroes
for (var hero in heroes) {
  printHero(hero);
}

print("\n-----------------------------\n");
}