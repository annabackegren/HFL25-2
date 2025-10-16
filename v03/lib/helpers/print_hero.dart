import 'package:v03/models/hero_model.dart';

void printHero(HeroModel hero) {
  print(
    "Namn: ${hero.name}\n"
    "Fullständigt namn: ${hero.biography.fullName}\n"
    "Tillhörighet: ${hero.biography.alignment}\n"
    "Styrka: ${hero.powerstats.strength}\n"
    "Hastighet: ${hero.powerstats.speed}\n"
    "Förlag: ${hero.biography.publisher}\n"
  );
}