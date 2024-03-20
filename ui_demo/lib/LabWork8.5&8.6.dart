// Please Import Ecommerce_Custom_Container.dart & bottom_right_text.dart
// and Assets Images To Run This Code
// Made By Shahmoksh22

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ui_demo/Ecommerce_Custom_Container.dart';
import 'package:ui_demo/bottom_right_text.dart';

class Screen85 extends StatefulWidget {
  const Screen85({Key? key}) : super(key: key);

  @override
  State<Screen85> createState() => _Screen85State();
}

class _Screen85State extends State<Screen85> {
  String _selectedItem = 'Select Category'; // Default selected item

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart), // Icon you want to add
            onPressed: () {
              // Add functionality here
            },
          ),
        ],
      ),
      body: Stack(
        children: [SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                child: DropdownButton<String>(
                  value: _selectedItem,
                  onChanged: (newValue) {
                    setState(() {
                      _selectedItem = newValue!;
                    });
                  },
                  items: <String>['Select Category', 'Mobile', 'Laptop', 'TV', 'PC']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Mobiles",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomProductContainer(
                        imagePath: 'assets/images/Iphone15ProMax.jpg',
                        productName: 'iPhone 15 Pro Max',
                        productPrice: '\$ 549',
                        productDiscount: '15.79%',
                        productDiscription: 'Apple iPhone 15 Pro Max (256 GB) - Black Titanium Super Retina XDR display, 17.00 cm / 6.7″ (diagonal) , all‑screen OLED display, 2796x1290-pixel resolution at 460 ppi Size : 256GB',
                        productBrand: 'Apple',
                        initialRating: 5,
                        productstock: 12,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomProductContainer(
                        imagePath: 'assets/images/Iphone15.jpg',
                        productName: 'iPhone 15',
                        productPrice: '\$ 449',
                        productDiscount: '10.59%',
                        productDiscription: 'Apple iPhone 15 (128 GB) - Pink',
                        productBrand: 'Apple',
                        initialRating: 4,
                        productstock: 12,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomProductContainer(
                        imagePath: 'assets/images/Iphone15Plus.jpg',
                        productName: 'iPhone 15 Plus',
                        productPrice: '\$ 499',
                        productDiscount: '7.59%',
                        productDiscription: 'Apple iPhone 15 Plus (128 GB)',
                        productBrand: 'Apple',
                        initialRating: 4.5,
                        productstock: 12,
                      ),
                    ),
                        ],
                      ),
                    ),
                   SizedBox(
                     height: 10,
                     width: double.infinity,
                   ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Laptop",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0), // Add margin around the CustomProductContainer
                      child: CustomProductContainer(
                        imagePath: 'assets/images/MacBookM3.jpg',
                        productName: 'MacBook M3 Chip',
                        productPrice: '\$ 999',
                        productDiscount: '10.59%',
                        productDiscription: 'Apple 2023 MacBook Pro (14-inch, M3 chip with 8‑core CPU and 10‑core GPU, 8GB Unified Memory, 512GB) - Space Grey',
                        productBrand: 'Apple',
                        initialRating: 5,
                        productstock: 12,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomProductContainer(
                        imagePath: 'assets/images/AsusTuf.jpg',
                        productName: 'Asus Tuf Laptop',
                        productPrice: '\$ 779',
                        productDiscount: '8.56%',
                        productDiscription: 'ASUS TUF Gaming F15, Intel Core i5-11400H 11th Gen, 15.6-inch (39.62 cm) FHD 144Hz, Gaming Laptop (16GB/512GB SSD/4GB NVIDIA GeForce RTX 2050/Win 11/ RGB Backlit KB/Black/2.30 kg), FX506HF-HN025W',
                        productBrand: 'Asus',
                        initialRating: 4,
                        productstock: 12,
                      ),
                    ),Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CustomProductContainer(
                        imagePath: 'assets/images/HPVICTUS.jpg',
                        productName: 'Hp Victus Laptop',
                        productPrice: '\$ 570',
                        productDiscount: '4.54%',
                        productDiscription: 'HP Victus Gaming Laptop, AMD Ryzen 7 7840HS AI Powered, 6GB RTX 3050 GPU, 16.1-inch (40.9 cm), 95W TGP, FHD, IPS, 144Hz, 16GB DDR5, 1TB SSD, RGB Backlit KB, B&O (MSO, Blue, 2.29 kg), s0089AX',
                        productBrand: 'HP',
                        initialRating: 4.5,
                        productstock: 12,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
                width: double.infinity,
              )

                  ],
                ),
        ),
          BottomRightText(),
      ]
      ),
          );
  }
}

