import 'package:flutter/material.dart';

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFC008), // Set background color to #FFC008
        title: Text('Screen 1'),
        leading: IconButton(
          icon: Icon(Icons.menu), // Set leading icon to menu icon
          onPressed: () {
            // Add onPressed function if you want to handle the menu icon tap
          },
        ),
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Red & White",
              style: TextStyle(
                color: Colors.red,
                fontSize: 55,
              ),
            ),
            SizedBox(height: 8), // Add some space between text and underline
            Container(
              height: 6,
              // Height of the underline
              color: Colors.yellow, // Yellow color
            ),
            SizedBox(height: 8), // Add some space between text and underline
            Container(
              height: 6, // Height of the underline
              color: Colors.yellow, // Yellow color
            ),
          ],
        ),
        alignment: Alignment.center,
      ),
    );
  }
}
