import 'package:flutter/material.dart';
import 'package:food_app/category_meals.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color colour;

  CategoryItem({required this.title, required this.colour, required this.id});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.black,
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryMeals(
              categoryId: id,
              categoryTitle: title,
            ),
          ),
        );
        // selectCategory(context);
      },
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [colour.withOpacity(0.7), colour],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
            borderRadius: BorderRadius.circular(15)),
        child: Text(
          title,
          style: TextStyle(
              fontFamily: 'Raleway', fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
