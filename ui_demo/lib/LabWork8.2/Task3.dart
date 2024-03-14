import 'package:flutter/material.dart';
import 'package:ui_demo/bottom_right_text.dart';
class Screen3 extends StatelessWidget {
  const Screen3({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        shadowColor: Colors.grey.withOpacity(0.9),
        backgroundColor: Color(0xff009688),
        title: const Padding(
          padding: EdgeInsets.only(top: 18.0),
          child: Text(
            'A Shadow Button',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        elevation: 10.0,
        shape: const Border(
          top: BorderSide(
            color: Color(0xff007066),
            width: 50,
          ),
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: Container(
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), // Adjust radius for curve
                border: Border.all(
                  color: Colors.white,
                  width: 2.0,
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0xff009688),
                    blurRadius: 20.0,
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
