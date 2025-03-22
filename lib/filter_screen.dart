import 'package:flutter/material.dart';
import 'package:food_app/tabs_screen.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool glutenFree = false;
  bool vegetarian = false;
  bool vegan = false;
  bool lactoseFree = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.save))],
        backgroundColor: Colors.pinkAccent,
        title: Text(
          'Your Filter',
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              color: Colors.amber[600],
              height: 120,
              width: double.infinity,
              padding:
                  EdgeInsets.only(top: 45, left: 20, right: 20, bottom: 15),
              child: Text(
                'Cooking Up!',
                style: TextStyle(
                    color: Colors.pink,
                    fontSize: 30,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w900),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ListTile(
              leading: Icon(
                Icons.restaurant,
                size: 26,
              ),
              title: Text(
                'Meals',
                style: TextStyle(
                    fontFamily: 'RobotoCondensed',
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => TabsScreen()));
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                size: 26,
              ),
              title: Text(
                'Filters',
                style: TextStyle(
                    fontFamily: 'RobotoCondensed',
                    fontWeight: FontWeight.bold,
                    fontSize: 24),
              ),
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => FilterScreen()));
              },
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: Text(
              'Adjust Your Meal Selection',
              style: TextStyle(
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                SwitchListTile(
                  title: Text(
                    'Gluten-Free',
                    style: TextStyle(
                        fontFamily: 'Raleway', fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    'Only include gluten-free meals.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Raleway',
                    ),
                  ),
                  value: glutenFree,
                  onChanged: (newValue) {
                    setState(
                      () {
                        glutenFree = newValue;
                      },
                    );
                  },
                  activeColor: Colors.orange,
                ),
                SwitchListTile(
                  title: Text(
                    'Lactose-Free',
                    style: TextStyle(
                        fontFamily: 'Raleway', fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    'Only include lactose-free meals.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Raleway',
                    ),
                  ),
                  value: lactoseFree,
                  onChanged: (newValue) {
                    setState(
                      () {
                        lactoseFree = newValue;
                      },
                    );
                  },
                  activeColor: Colors.orange,
                ),
                SwitchListTile(
                  title: Text(
                    'Vegetarian',
                    style: TextStyle(
                        fontFamily: 'Raleway', fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    'Only include vegetarian meals.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Raleway',
                    ),
                  ),
                  value: vegetarian,
                  onChanged: (newValue) {
                    setState(
                      () {
                        vegetarian = newValue;
                      },
                    );
                  },
                  activeColor: Colors.orange,
                ),
                SwitchListTile(
                  title: Text(
                    'Vegan',
                    style: TextStyle(
                        fontFamily: 'Raleway', fontWeight: FontWeight.w500),
                  ),
                  subtitle: Text(
                    'Only include vegan meals.',
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Raleway',
                    ),
                  ),
                  value: vegan,
                  onChanged: (newValue) {
                    setState(
                      () {
                        vegan = newValue;
                      },
                    );
                  },
                  activeColor: Colors.orange,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
