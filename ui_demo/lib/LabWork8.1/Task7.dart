import 'package:flutter/material.dart';

class Screen7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'Opened Doors',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Stack(
        children: [
          Align(
            child: Center(
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border(
                    left: BorderSide(
                      color: Color(0xffd5d5d5),
                      width: 60,
                    ),
                    right: BorderSide(
                      color: Color(0xffd5d5d5),
                      width: 60,
                    ),
                    top: BorderSide(
                      color: Colors.black,
                      width: 30,
                    ),
                    bottom: BorderSide(
                      color: Colors.black,
                      width: 30,
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
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}