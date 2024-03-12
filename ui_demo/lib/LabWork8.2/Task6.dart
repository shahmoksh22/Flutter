import 'package:flutter/material.dart';

class Screen6 extends StatelessWidget {
  const Screen6({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent, // Set Scaffold background to transparent
      appBar: AppBar(
        toolbarHeight: 70,
        shadowColor: Colors.black.withOpacity(0.9),
        backgroundColor: Color(0xff48416a),
        title: const Padding(
          padding: EdgeInsets.only(top: 18.0),
          child: Text(
            'Watch',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        elevation: 10.0,
        shape: const Border(
          top: BorderSide(
            color: Color(0xff36314f),
            width: 50,
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF48426b),
                  Color(0xFF3667a8),
                  Color(0xFF2295f1),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Center(
              child: Container(
                width: 200,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), // Adjust radius for curve
                  border: Border.all(
                    color: Colors.white,
                    width: 2.0,
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Color(0xFF982cb2),
                      Color(0xFF2790ef),
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                ),
                child: Center(
                  child: Text(
                    'Flutter',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
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

class BottomRightText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Text(
          'Made by ShahMoksh22',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
