import 'package:v03/models/hero_model.dart';

abstract class HeroDataManaging {
  Future<void> saveHero(HeroModel hero);
  Future<List<HeroModel>> getHeroList();
  Future<List<HeroModel>> searchHero(String name);
}

class HeroDataManager implements HeroDataManaging {
  HeroDataManager._internal();
  static final HeroDataManager _instance = HeroDataManager._internal();
  factory HeroDataManager() {
    return _instance;
  }

final List<HeroModel> _heroes = [];

  @override
  Future<void> saveHero(HeroModel hero) async {
    _heroes.add(hero);
    await Future.delayed(Duration(milliseconds: 100)); // mock async
  }

  @override
  Future<List<HeroModel>> getHeroList() async {
    await Future.delayed(Duration(milliseconds: 100));
    return _heroes;
  }

  @override
  Future<List<HeroModel>> searchHero(String name) async {
    await Future.delayed(Duration(milliseconds: 100));
    return _heroes
        .where((hero) => hero.name.toLowerCase().contains(name.toLowerCase()))
        .toList();
  }
}