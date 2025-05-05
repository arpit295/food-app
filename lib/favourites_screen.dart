import 'package:flutter/material.dart';
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
      InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MealDetail(mealId: id)));
        },
        child: Card(
          margin: EdgeInsets.all(10),
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(15),
                      topLeft: Radius.circular(15),
                    ),
                    child: Image.network(
                      imageUrl,
                      height: 250,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    right: 10,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                      width: 220,
                      color: Colors.black54,
                      child: Text(
                        title,
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.w400),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceAround, // Space between items
                  children: [
                    Row(
                      children: [
                        Icon(Icons.schedule),
                        SizedBox(width: 6),
                        Text(
                          '$duration min',
                          style: TextStyle(fontFamily: 'Raleway'),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.work),
                        SizedBox(width: 6),
                        Text(
                          complexity,
                          style: TextStyle(fontFamily: 'Raleway'),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Icon(Icons.attach_money),
                        SizedBox(width: 6),
                        Text(
                          affordability,
                          style: TextStyle(fontFamily: 'Raleway'),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      )
    ]));
  }
}
