import "package:v03/hero_subclasses.dart";

class HeroModel {
  final int id;
  final String name;
  final Powerstats powerstats;
  final Biography biography;
  final Appearance appearance;
  final Work work;
  final Connections connections;
  final HeroImage image;

  HeroModel({
    required this.id,
    required this.name,
    required this.powerstats,
    required this.biography,
    required this.appearance,
    required this.work,
    required this.connections,
    required this.image,
  });
}