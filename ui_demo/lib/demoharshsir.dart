// import 'package:demo/cart_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProductScreen extends StatefulWidget {
  const ProductScreen({super.key});

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {

  List<Map<String, dynamic>> arrProduct = [
    {'id': 1, 'title': 'iPhone 15 Pro', 'description': 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'amount': 10000.0, 'qty': 0},
    {'id': 2, 'title': 'Samsung S20', 'description': 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'amount': 2500.0, 'qty': 0},
    {'id': 3, 'title': 'Apple macbook pro', 'description': 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'amount': 5000.0, 'qty': 0},
    {'id': 4, 'title': 'Water battle', 'description': 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'amount': 55000.0, 'qty': 0},
  ];

  int cartCount = 0;
  double cartAmount = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Products'
        ),
        actions: [
          IconButton(
            onPressed: () {
              List<Map<String, dynamic>> cartProducts = [];
              arrProduct.forEach((element) {
                if(element['qty'] > 0){
                  cartProducts.add(element);
                }
              });

              //Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen(arrProduct: cartProducts)));
            },
            icon: Icon(Icons.shopping_cart),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: arrProduct.length,
              itemBuilder: (context, index) {
                Map data = arrProduct[index];
                return Container(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        data['title'].toString(),
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        data['description'].toString(),
                        style: const TextStyle(fontSize: 16),
                      ),
                      Row(
                        children: [
                          Text(
                            '\$${data['amount'].toString()}',
                            style: const TextStyle(fontSize: 16),
                          ),
                          const Spacer(),
                          InkWell(
                            onTap: () {
                              addAnDRemoveCart(index);
                            },
                            child: Text(
                              (data['qty'] == 0) ? 'Add to cart' : 'Remove from cart',
                              style: const TextStyle(fontSize: 16, color: Colors.blueAccent, decoration: TextDecoration.underline),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.blue,
            child: Row(
              children: [
                Text(
                  'Count:- $cartCount',
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                ),
                const Spacer(),
                Text(
                  'Price:- \$$cartAmount',
                  style: const TextStyle(fontSize: 20, color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  void addAnDRemoveCart(int index) {
    Map data = arrProduct[index];
    if(data['qty'] == 0){
      setState(() {
        arrProduct[index]['qty'] = 1;
      });
    }
    else{
      setState(() {
        arrProduct[index]['qty'] = 0;
      });
    }
    print('Updated qty -> ${arrProduct[index]}');
    cartCount = 0;
    cartAmount = 0;
    arrProduct.forEach((element) {
      cartCount += (element['qty'] as int);
      if(element['qty'] > 0){
        cartAmount += (element['amount'] as double);
      }
    });
    print('Cart count -> $cartCount');
    print('Cart price -> $cartAmount');
  }
}
