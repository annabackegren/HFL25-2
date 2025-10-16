import 'dart:io';
import 'package:v03/managers/hero_data_managing.dart';
import 'package:v03/helpers/add_hero.dart';
import 'package:v03/helpers/show_heroes.dart';
import 'package:v03/helpers/search_hero.dart';

void main() async {
  final heroManager = HeroDataManager();
  await menu(heroManager);
}

//MENU
Future<void> menu(HeroDataManager heroManager) async{
  while (true){
  stdout.writeln("1. Lägg till hjälte");
  stdout.writeln("2. Visa hjältar");
  stdout.writeln("3. Sök efter en hjälte");
  stdout.writeln("4. Avsluta");
  print("-----------------------------");
  stdout.write("Välj vad du vill göra (1-4):");

  int menuChoice = int.parse(stdin.readLineSync()!);

switch(menuChoice){
  case 1:
await addHero(heroManager);
break;
  case 2:
await showHeroes(heroManager);
break;
  case 3:
await searchHeroes(heroManager);
break;
  case 4:
print("Du har valt att avsluta, hejdå!");
exit(0);
  default:
print("Numret du har valt har ingen abonnent, var god försök igen!");
}
  }
}