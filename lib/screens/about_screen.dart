import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              'https://tse4.mm.bing.net/th?id=OIP.a8gbKR-RqJnXb0Yaf0VAHwHaHa&pid=Api&P=0&h=220',
              width: 100, // Adjust size as needed
              height: 100, // Adjust size as needed
            ),
            SizedBox(height: 16.0),
            Text(
              'Welcome to Shoe Shack!',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              'Your ultimate destination for high-quality footwear. At Shoe Shack, we believe in providing our customers with the best products, at the best prices, and with the best service.',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 16.0),
            Text(
              'Why Choose Us?',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              '• Wide variety of styles and brands\n'
                  '• Competitive prices\n'
                  '• Easy and secure online shopping\n'
                  '• Fast and reliable delivery\n'
                  '• Excellent customer service',
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.black54,
              ),
              textAlign: TextAlign.left,
            ),
          ],
        ),
      ),
    );
  }
}
