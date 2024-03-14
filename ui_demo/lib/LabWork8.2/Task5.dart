import 'package:flutter/material.dart';
import 'package:ui_demo/bottom_right_text.dart';
class Screen5 extends StatelessWidget {
  const Screen5({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2293f0),
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        shadowColor: Colors.black.withOpacity(0.9),
        backgroundColor: Color(0xff2196f3),
        title: const Padding(
          padding: EdgeInsets.only(top: 18.0),
          child: Text(
            'Indian Flag Container',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        elevation: 10.0,
        shape: const Border(
          top: BorderSide(
            color: Color(0xff1a70b6),
            width: 50,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xff2394f2),
                  Color(0xff1717A2),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Center(
              child: Container(
                width: 250,
                height: 150,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white, // White border color
                    width: 2.0, // Border width
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFFFF9933), // Saffron
                      Colors.white, // White
                      Color(0xFF138808), // Green
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Center(
                  child: Text(
                    '✴︎',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
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
