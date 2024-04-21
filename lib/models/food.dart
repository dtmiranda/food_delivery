import 'package:flutter/material.dart';

class Food {
  final String name;
  final String description;
  final String price;
  final String imagePath;
  final FoodCategory category;
  final List<Addons> avaliableAddons;

  Food({
    required this.name,
    required this.description,
    required this.price,
    required this.imagePath,
    required this.category,
    required this.avaliableAddons,
  });
}

//food category
enum FoodCategory {
  burgers,
  salads,
  sides,
  drinks,
  desserts,
}

//food addons
class Addons{
  String name;
  double price;

  Addons({
    required this.name,
    required this.price,
  });
}