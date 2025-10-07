import 'dart:io';

//LIST OF HEROES
List<Map<String, dynamic>> heroes = [];

void main(){
  menu();
}

//MENU
void menu(){
  stdout.writeln("1. Lägg till hjälte");
  stdout.writeln("2. Visa hjältar");
  stdout.writeln("3. Sök efter en hjälte");
  stdout.writeln("4. Avsluta");
  print("-----------------------------");
  stdout.write("Välj vad du vill göra (1-4):");

  int menuChoice = int.parse(stdin.readLineSync()!); //gör endast 1-4 valbart och hantera !

switch(menuChoice){
  case 1:
addHero();
break;
  case 2:
showHeroes();
break;
  case 3:
serachHeroes();
break;
  case 4:
print("Du har valt att avsluta, hejdå!");
exit(0);
  default:
print("Numret du har valt har ingen abonnent, var god försök igen!");
menu();
}

menu();
}

// TEMPLATE FOR HERO LIST
void printHero(Map<String, dynamic> hero){
    print(
    "Namn: ${hero['name']}\n"
    "Styrka: ${hero['strength']}\n"
    "Svaghet: ${hero['weakness']}\n"
    "Fiende: ${hero['nemesis']}\n"
    );
}

//ADD SUPERHERO TO LIST
void addHero(){

  print("-----------------------------");
  print("Lägg till en superhjälte!");
  print("-----------------------------");
  print("");

  //name
 String? name;
 do {
 stdout.write("Namn: ");
 name = stdin.readLineSync();
  if (name == null || name.isEmpty){
    print("Du måste ange ett namn.");
  }
 } while (name == null || name.isEmpty);

  // strength
 int strength;
 do {
 stdout.write("Styrka (0-100): ");
 String? inStrength = stdin.readLineSync();
  if (inStrength == null || inStrength.isEmpty){
    print("Du måste ange styrka.");
    continue;
  }
  try {
    strength = int.parse(inStrength);
    break;
  } catch (e) {
    print("Du måste ange ett heltal.");
  }
} while (true);

  // weakness
 String? weakness;
 do {
 stdout.write("Svaghet: ");
 weakness = stdin.readLineSync();
  if (weakness == null || weakness.isEmpty){
    print("Du måste ange en svaghet.");
  }
 } while (weakness == null || weakness.isEmpty);

// nemesis
 String? nemesis;
 do {
 stdout.write("Fiende: ");
 nemesis = stdin.readLineSync();
  if (nemesis == null || nemesis.isEmpty){
    print("Du måste ange en nemesis.");
  }
 } while (nemesis == null || nemesis.isEmpty);

  // add heroes to list
  heroes.add({
    "name": name,
    "strength": strength,
    "weakness": weakness,
    "nemesis": nemesis
  });
  print("");

  // return to menu
  menu();
}

void showHeroes(){
    print("");
    print("-----------------------------");
    print("");
    print("Visar superhjältar sorterade på styrka (starkast först): ");
    print("-----------------------------");
    print("");

  heroes.sort((a, b) => (b["strength"] as int).compareTo(a["strength"]));

heroes.forEach((hero){
printHero(hero);
});
    print("");
    print("-----------------------------");

}

// SEARCH FOR HEROES
void serachHeroes(){
    print("");
    print("-----------------------------");
    print("");
    print("Sök bland de coola superhjältarna!");

String? findHero;
do{
    print("");
    stdout.write("Skriv in namnet (hela eller delar av det) på hjälten du vill hitta: ");
    findHero = stdin.readLineSync();

    if(findHero == null || findHero.isEmpty){
      print("Alla hjältar har ett namn, kom igen!");
    }
}while(findHero == null || findHero.isEmpty);

var heroSearch = heroes.where((hero) => (hero["name"] as String).contains(findHero!));
    print("");
    print("Sökresultat för '$findHero': ");
    print("");

for (var hero in heroSearch){
printHero(hero);
}
menu();
}