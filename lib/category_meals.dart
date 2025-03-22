import 'package:flutter/material.dart';
import 'package:food_app/dummy_data.dart';
import 'package:food_app/meal_item.dart';

class CategoryMeals extends StatelessWidget {
  final String categoryId;
  final String categoryTitle;

  CategoryMeals({required this.categoryId, required this.categoryTitle});

  @override
  Widget build(BuildContext context) {
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
        appBar: AppBar(
          title: Text(categoryTitle),
        ),
        body: ListView.builder(
            itemBuilder: (context, index) {
              return MealItem(
                id: categoryMeals[index].id,
                title: categoryMeals[index].title,
                imageUrl: categoryMeals[index].imageUrl,
                duration: categoryMeals[index].duration,
                affordability: categoryMeals[index].affordability,
                complexity: categoryMeals[index].complexity,
              );
            },
            itemCount: categoryMeals.length));
  }
}
