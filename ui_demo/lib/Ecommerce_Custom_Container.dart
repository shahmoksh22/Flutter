import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomProductContainer extends StatelessWidget {
  final String imagePath;
  final String productName;
  final String productPrice;
  final String productDiscount;
  final double initialRating;

  const CustomProductContainer({
    Key? key,
    required this.imagePath,
    required this.productName,
    required this.productPrice,
    required this.productDiscount,
    required this.initialRating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material( // Wrap with Material
      elevation: 4, // Set elevation
      shadowColor: Colors.black, // Shadow color
      borderRadius: BorderRadius.circular(20), // Apply border radius
      child: Container(
        margin: EdgeInsets.all(10),
        height: 280,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20), // Circular border radius
          border: Border.all(color: Colors.black), // Add black border
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  imagePath,
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(19), // Curved top-left edge
                      bottomRight: Radius.circular(10), // Curved bottom-right edge
                    ),
                  ),
                  child: Text(
                    productDiscount,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                productName,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                productPrice,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: RatingBar.builder(
                initialRating: initialRating, // Initial rating value
                minRating: 1, // Minimum rating value
                direction: Axis.horizontal, // Rating direction (horizontal or vertical)
                allowHalfRating: true, // Allow half rating
                itemCount: 5, // Total number of rating items
                itemSize: 20, // Size of each rating item
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber, // Color of the rating stars
                ),
                ignoreGestures: true, onRatingUpdate: (double value) {  }, // Ignore user gestures to prevent rating update
              ),
            ),
          ],
        ),
      ),
    );
  }
}
/*
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomProductContainer extends StatelessWidget {
  final String imagePath;
  final String productName;
  final String productPrice;
  final String productDiscount;
  final double initialRating;

  const CustomProductContainer({
    Key? key,
    required this.imagePath,
    required this.productName,
    required this.productPrice,
    required this.productDiscount,
    required this.initialRating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Navigate to the details page when the container is tapped
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ItemDetailsPage(
              // Pass the item details to the details page
              itemName: productName,
              itemPrice: productPrice,
              itemDiscount: productDiscount,
              itemRating: initialRating,
              itemImagePath: imagePath,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.all(10),
        height: 300,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20), // Circular border radius
          border: Border.all(color: Colors.black), // Add black border
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  imagePath,
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(19), // Curved top-left edge
                      bottomRight: Radius.circular(10), // Curved bottom-right edge
                    ),
                  ),
                  child: Text(
                    productDiscount,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                productName,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                productPrice,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: RatingBar.builder(
                initialRating: initialRating,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemSize: 20,
                itemBuilder: (context, _) => Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                ignoreGestures: true, // Disable rating update on tap
                onRatingUpdate: (_) {}, // Empty function to prevent rating update
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemDetailsPage extends StatelessWidget {
  final String itemName;
  final String itemPrice;
  final String itemDiscount;
  final double itemRating;
  final String itemImagePath;

  const ItemDetailsPage({
    Key? key,
    required this.itemName,
    required this.itemPrice,
    required this.itemDiscount,
    required this.itemRating,
    required this.itemImagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(itemName), // Use the item name as the page title
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              itemImagePath,
              width: 200,
              height: 200,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 20),
            Text(
              'Price: $itemPrice',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Discount: $itemDiscount',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'Rating: $itemRating',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}


 */