import 'package:flutter/material.dart';
import 'package:food_app/favorites_meals.dart';

import 'meal_detail.dart';

class FavouritesScreen extends StatelessWidget {
  final String id;
  final String imageUrl;
  final String title;
  final int duration;
  final String complexity;
  final String affordability;

  FavouritesScreen(
      {required this.affordability,
      required this.complexity,
      required this.title,
      required this.duration,
      required this.imageUrl,
      required this.id});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      FavoritesMeals(
          affordability: 'Pricy',
          complexity: 'Simple',
          title: 'Classic Hamburger',
          duration: 45,
          imageUrl:
              'https://rhubarbandcod.com/wp-content/uploads/2022/06/The-Classic-Cheeseburger-1-500x500.jpg',
          id: 'm3'),
    ]));
  }
}
