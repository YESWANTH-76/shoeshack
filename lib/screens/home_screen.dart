import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'product_screen.dart';
import 'about_screen.dart';
import 'categories_screen.dart';
import 'cart_screen.dart';
import '../widgets/custom_search_delegate.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    LoginScreen(),
    ProductScreen(),
    AboutScreen(),
    CategoriesScreen(),
  ];

  static List<int> _appBarScreens = [1]; // Index of screens that require app bar

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarScreens.contains(_selectedIndex)
          ? AppBar(
        title: Row(
          children: [
            Image.network(
              'https://tse4.mm.bing.net/th?id=OIP.a8gbKR-RqJnXb0Yaf0VAHwHaHa&pid=Api&P=0&h=220',
              width: 30, // Adjust size as needed
              height: 30, // Adjust size as needed
            ),
            SizedBox(width: 8),
            Text('Shoe Shack'),
          ],
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(),
              );
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => CartScreen(),
                ),
              );
            },
          ),
        ],
      )
          : null,
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: 'Login',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'About',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: IconThemeData(size: 30),
        onTap: _onItemTapped,
      ),
    );
  }
}
