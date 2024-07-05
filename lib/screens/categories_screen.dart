import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  final List<Map<String, String>> categories = [
    {
      'image': 'https://tse4.mm.bing.net/th?id=OIP.q-8NK3Q9M-pjiPbAHISK7gHaHa&pid=Api&P=0&h=220',
      'title': 'Men\'s Shoes',
    },
    {
      'image': 'https://tse2.mm.bing.net/th?id=OIP.x4AM_rtqvQ2jA-0rzzGoawHaHa&pid=Api&P=0&h=220',
      'title': 'Women\'s Shoes',
    },
    {
      'image': 'https://tse3.mm.bing.net/th?id=OIP.4kl4OliF9t9j1lQZqlEOuAHaHa&pid=Api&P=0&h=220',
      'title': 'Kids\' Shoes',
    },
    {
      'image': 'https://tse2.mm.bing.net/th?id=OIP.32ZKVt4-iByZ4RJrgPHFigHaE7&pid=Api&P=0&h=220',
      'title': 'Other Shoes',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () => navigateToCategoryScreen(context, categories[index]['title']!),
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Image.network(
                      categories[index]['image']!,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      categories[index]['title']!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  void navigateToCategoryScreen(BuildContext context, String title) {
    switch (title) {
      case "Men's Shoes":
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => MenShoesScreen(),
        ));
        break;
      case "Women's Shoes":
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => WomenShoesScreen(),
        ));
        break;
      case "Kids' Shoes":
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => KidsShoesScreen(),
        ));
        break;
      default:
      // Handle navigation for other categories if needed
        break;
    }
  }
}

class MenShoesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Men's Shoes"),
      ),
      body: ListView(
        children: [
          ExpansionTile(
            title: Text('Mens'),
            children: [
              ListTile(
                title: Text('Casual Shoes'),
                onTap: () {
                  // Handle Casual Shoes tap
                },
              ),
              ListTile(
                title: Text('Formal Shoes'),
                onTap: () {
                  // Handle Formal Shoes tap
                },
              ),
              ListTile(
                title: Text('Sports Shoes'),
                onTap: () {
                  // Handle Sports Shoes tap
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class WomenShoesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Women's Shoes"),
      ),
      body: ListView(
        children: [
          ExpansionTile(
            title: Text('Subcategories'),
            children: [
              ListTile(
                title: Text('Casual Shoes'),
                onTap: () {
                  // Handle Casual Shoes tap
                },
              ),
              ListTile(
                title: Text('Formal Shoes'),
                onTap: () {
                  // Handle Formal Shoes tap
                },
              ),
              ListTile(
                title: Text('Sports Shoes'),
                onTap: () {
                  // Handle Sports Shoes tap
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class KidsShoesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Kids' Shoes"),
      ),
      body: ListView(
        children: [
          ExpansionTile(
            title: Text('Subcategories'),
            children: [
              ListTile(
                title: Text('Boys Shoes'),
                onTap: () {
                  // Handle Boys Shoes tap
                },
              ),
              ListTile(
                title: Text('Girls Shoes'),
                onTap: () {
                  // Handle Girls Shoes tap
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
