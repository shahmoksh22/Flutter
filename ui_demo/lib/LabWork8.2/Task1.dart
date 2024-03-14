import 'package:flutter/material.dart';
import 'package:ui_demo/bottom_right_text.dart';
class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        shadowColor: Colors.grey.withOpacity(0.9),
        backgroundColor: Color(0xff4caf50),
        title: Padding(
          padding: const EdgeInsets.only(top: 18.0),
          child: Text(
            'Launch Button',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        elevation: 10.0,
        shape: const Border(
          top: BorderSide(
            color: Color(0xff39833c),
            width: 50,
          ),
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white, // Border color
                  width: 2.0, // Border width
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff4caf50), // Green glow color
                    blurRadius: 5.0, // Spread of the glow
                    spreadRadius: 10.0, // Spread radius of the glow
                    offset: Offset(0, 0), // Offset of the glow
                  ),
                ],
                color: Colors.black, // Container background color
              ),
              child: Center(
                child: Text(
                  'Hello, World!',
                  style: TextStyle(
                    color: Colors.white, // Text color
                    fontSize: 24,
                  ),
                ),
              ),
            ),
          ),
          // Positioned bottom right widget
          BottomRightText(),
        ],
      ),
    );
  }
}
