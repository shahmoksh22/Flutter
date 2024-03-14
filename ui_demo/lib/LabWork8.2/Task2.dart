import 'package:flutter/material.dart';
import 'package:ui_demo/bottom_right_text.dart';
class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        backgroundColor: Colors.red,
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
            color: Color(0xffc03d3d),
            width: 50,
          ),
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: Container(
              width: 200,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), // Adjust radius for curve
                border: Border.all(
                  color: Colors.red,
                  width: 2.0,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.red,
                    blurRadius: 25.0,
                    spreadRadius: 5.0,
                    offset: Offset(0, 0),
                  ),
                ],
                color: Colors.black,
              ),
              child: Center(
                child: Text(
                  'Tap',
                  style: TextStyle(
                    color: Colors.white,
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
