import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Adidas',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.shopping_cart, color: Colors.white),
            ),
          )
        ],
        shadowColor: Colors.grey,
        elevation: 8,
      ),
      body: ListView.builder(
        itemCount: CategoryProducts.length,
        itemBuilder: (context, index) {
          final category = CategoryProducts[index];
          final products = category['Products'] as List<dynamic>;
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  category['categoryname'].toString(),
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Column(
                children: products.map<Widget>((product) {
                  return ListTile(
                    title: Text(product['producttitle'].toString()),
                  );
                }).toList(),
              ),
            ],
          );
        },
      ),
    );
  }
}

List<Map<String, dynamic>> CategoryProducts = [
  {
    "categoryid": 1,
    "categoryname": "Mobile",
    "Products": [
      {
        "productid": 2,
        "producttitle": "iPhone X",
        "description":
        "SIM-Free, Model A19211 6.5-inch Super Retina HD display with OLED technology A12 Bionic chip with ...",
        "price": 899,
        "discountPercentage": 17.94,
        "rating": 4.44,
        "stock": 34,
        "brand": "Apple",
        "category": "smartphones",
        "images": [
          "https://cdn.dummyjson.com/product-images/2/1.jpg"
        ]
      }
    ]
  },
  // Other categories and products...
];
