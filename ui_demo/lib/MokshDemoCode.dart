import 'package:flutter/material.dart';

class HomePageClass extends StatefulWidget {
  const HomePageClass({Key? key}) : super(key: key);

  @override
  State<HomePageClass> createState() => _HomePageClassState();
}

class _HomePageClassState extends State<HomePageClass> {

  List<Map<String, dynamic>> arrProduct = [
    {'id': 1, 'title': 'iPhone 15 Pro', 'description': 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'amount': 10000.0, 'qty': 0},
    {'id': 2, 'title': 'Samsung S20', 'description': 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'amount': 2500.0, 'qty': 0},
    {'id': 3, 'title': 'Apple macbook pro', 'description': 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'amount': 5000.0, 'qty': 0},
    {'id': 4, 'title': 'Water battle', 'description': 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'amount': 55000.0, 'qty': 0},
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart), // Icon you want to add
            onPressed: () {
              // Add functionality here
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Text(
            "Category"
          )
        ],
      ),
    );
  }
}
