import 'package:flutter/material.dart';
import 'package:food_app/categories_screen.dart';
import 'package:food_app/favourites_screen.dart';
import 'package:food_app/filter_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, Object>> pages = [
    {'page': CategoriesScreen(), 'title': 'Categroies'},
    {
      'page': FavouritesScreen(
        affordability: 'Pricy',
        complexity: 'Simple',
        title: 'Classic Hamburger',
        duration: 45,
        imageUrl:
            'https://rhubarbandcod.com/wp-content/uploads/2022/06/The-Classic-Cheeseburger-1-500x500.jpg',
        id: 'm3',
      ),
      'title': ' Your Favorites'
    }
  ];
  int selectedPageIndex = 0;

  void selectPage(int index) {
    setState(() {
      selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pages[selectedPageIndex]['title'] as String),
      ),
      body: pages[selectedPageIndex]['page'] as Widget,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedPageIndex,
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(
            fontFamily: 'Raleway', fontSize: 15, fontWeight: FontWeight.w400),
        unselectedLabelStyle: TextStyle(
            fontWeight: FontWeight.w400, fontSize: 15, fontFamily: 'Raleway'),
        backgroundColor: Colors.pinkAccent,
        onTap: selectPage,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.category,
              ),
              label: 'Categories'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.star,
              ),
              label: 'Favorites'),
        ],
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
    );
  }
}

// DefaultTabController(
// length: 2,
// child: Scaffold(
// appBar: AppBar(
// title: Text('Meals'),
// bottom: TabBar(
// labelStyle:
// TextStyle(fontFamily: 'Raleway', fontWeight: FontWeight.w400),
// labelColor: Colors.white,
// unselectedLabelColor: Colors.white,
// tabs: [
// Tab(
// icon: Icon(
// Icons.category,
// color: Colors.white,
// ),
// text: 'Categories',
// ),
// Tab(
// icon: Icon(
// Icons.star,
// color: Colors.white,
// ),
// text: 'Favourite',
// )
// ],
// ),
// ),
// body: TabBarView(children: [CategoriesScreen(), FavouritesScreen()]),
// ),
// );
// }
// }
