import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  final List<Map<String, String>> products = [
    {
      'image': 'https://tse3.mm.bing.net/th?id=OIP.1RfKeDjiffAd7MnXDykgcQHaFs&pid=Api&P=0&h=220',
      'title': 'Red Tape Casual Lifestyle Shoes for Men',
      'price': '₹1,709.00',
      'discount': '70% savings',
      'mrp': 'M.R.P.: ₹5,699.00',
      'taxes': 'Inclusive of all taxes',
    },
    {
      'image': 'https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png',
      'title': 'Nike Mens Jordan 1 Retro High Sneaker',
      'price': '₹11,477.00',
      'discount': '18% savings',
      'mrp': 'M.R.P.: ₹13,995.00',
      'taxes': 'Inclusive of all taxes',
    },
    {
      'image': 'https://tse4.mm.bing.net/th?id=OIP.7XCMtor7_6KWLQlRLkcNsgHaHa&pid=Api&P=0&h=220',
      'title': 'Woodland men\'s Ogb 2975118nw Ankle Boot',
      'price': '₹3,417.00',
      'discount': '40% savings',
      'mrp': 'M.R.P.: ₹5,695.00',
      'taxes': 'Inclusive of all taxes',
    },
    {
      'image': 'https://tse4.mm.bing.net/th?id=OIP.XyxFJtSWJlhHwue4Hd7QQAHaHa&pid=Api&P=0&h=220',
      'title': 'Liberty Mens Roger-e Sneaker',
      'price': '₹999.00',
      'discount': '23% savings',
      'mrp': 'M.R.P.: ₹1,299.00',
      'taxes': 'Inclusive of all taxes',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(products[index]['image']!),
                  SizedBox(height: 10),
                  Text(
                    products[index]['title']!,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(products[index]['price']!),
                  Text(products[index]['discount']!),
                  Text(products[index]['mrp']!),
                  Text(products[index]['taxes']!),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
