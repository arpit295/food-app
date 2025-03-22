import 'package:flutter/material.dart';
import 'package:food_app/dummy_data.dart';

class MealDetail extends StatefulWidget {
  final String mealId;
  MealDetail({required this.mealId});

  @override
  State<MealDetail> createState() => _MealDetailState();
}

class _MealDetailState extends State<MealDetail> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) {
      return meal.id == widget.mealId;
    });

    return Scaffold(
      appBar: AppBar(
        title: Text(selectedMeal.title),
      ),
      body: Column(
        children: [
          Container(
            height: 300,
            width: double.infinity,
            child: Image(
              image: NetworkImage(selectedMeal.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Ingredients',
              style: TextStyle(
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            height: 150,
            width: 300,
            child: ListView.builder(
              itemCount: selectedMeal.ingredients.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Colors.amber,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                    child: Text(
                      selectedMeal.ingredients[index],
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w500,
                          fontSize: 15),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Steps',
              style: TextStyle(
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold,
                  fontSize: 22),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            height: 150,
            width: 300,
            child: ListView.builder(
              itemCount: selectedMeal.steps.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.pinkAccent,
                        child: Text(
                          '# ${index + 1}',
                          style: TextStyle(
                              fontSize: 17,
                              fontFamily: 'Raleway',
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        ),
                      ),
                      title: Text(
                        selectedMeal.steps[index],
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Raleway'),
                      ),
                    ),
                    Divider()
                  ],
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        backgroundColor: Colors.amberAccent,
        onPressed: () {
          setState(() {
            isFavorite = !isFavorite;
          });
        },
        child: Icon(
          isFavorite ? Icons.star : Icons.star_border,
          size: 25,
          color: Colors.black,
        ),
      ),
    );
  }
}
