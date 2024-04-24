
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomProductContainer extends StatelessWidget {
  final String imagePath;
  final String productName;
  final String productPrice;
  final String productDiscount;
  final String productDiscription;
  final String productBrand;
  final double initialRating;
  final int productstock;
  final int productqty;
  final int productid;

  const CustomProductContainer({
    Key? key,
    required this.imagePath,
    required this.productName,
    required this.productPrice,
    required this.productDiscount,
    required this.productDiscription,
    required this.productBrand,
    required this.initialRating,
    required this.productstock,
    required this.productqty,
    required this.productid,
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
              itemid: productid,
              itemPrice: productPrice,
              itemDiscount: productDiscount,
              itemRating: initialRating,
              itemImagePath: imagePath,
              itemDescription: productDiscription,
              itemBrand: productBrand,
              itemStock: productstock,
              itemqty: productqty,
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
                    color: Color(0xFFb71d1c),
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
  final int itemStock;
  final int itemqty;
  final String itemImagePath;
  final String itemDescription;
  final String itemBrand;
  final int itemid;

  const ItemDetailsPage({
    Key? key,
    required this.itemName,
    required this.itemPrice,
    required this.itemDiscount,
    required this.itemRating,
    required this.itemImagePath,
    required this.itemDescription,
    required this.itemBrand,
    required this.itemStock,
    required this.itemqty,
    required this.itemid,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
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
        children:[ Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      itemImagePath,
                      width: MediaQuery.of(context).size.width,
                      height: 500,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      margin: EdgeInsets.all(8.0),
                      padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  itemName,
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  '$itemPrice',
                                  style: TextStyle(
                                    color: Colors.red,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "SmartPhone",
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black26,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 15,
                                    ),
                                    Text(
                                      ' $itemRating',
                                      style: TextStyle(
                                        color: Colors.black38,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                          SizedBox(height: 18,),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Brand",
                                  style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  '$itemBrand',
                                  style: TextStyle(
                                      fontSize: 20,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 12,),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  "Stock",
                                  style: TextStyle(
                                    fontSize: 19,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  '$itemStock',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 18,),
                          Text(
                            "$itemDescription",
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 12,
                            ),

                          ),

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
          Positioned(
            bottom: 20,
            right: 20,
            child: GestureDetector(
              onTap: () {
                // if(itemqty == 0){
                //   itemqty = 1;
                //   // setState(() {
                //   //
                //   // });
                // }
                // else{
                //   itemqty = 0;
                //   // setState(() {
                //   //   arrProduct[index]['qty'] = 0;
                //   // });
                // }
               print("item id ->$itemid  Quantity -> $itemqty" );
               
              },
              child: CircleAvatar(
                backgroundColor: Colors.red,
                child: Icon(
                  Icons.add_shopping_cart,
                  color: Colors.white,
                ),
              ),
            ),
          ),


        ]
      ),
    );
  }
}
