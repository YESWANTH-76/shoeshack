import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce App',
      theme: ThemeData(
        primarySwatch: Colors.lime,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.orangeAccent,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          selectedIconTheme: IconThemeData(size: 30),
        ),
      ),
      home: HomeScreen(),
    );
  }
}
