import 'package:flutter/material.dart';

class Screen6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text('3D Cube'),
      ),
      body: Stack(
        children: [
          Align(
            child: Center(
              child: Container(
                height: 210,
                width: 200,
                decoration: BoxDecoration(
                  color: Colors.teal,
                  border: Border(
                    left: BorderSide(
                      color: Colors.teal.shade400,
                      width: 40,
                    ),
                    right: BorderSide(
                      color: Colors.teal.shade400,
                      width: 40,
                    ),
                    top: BorderSide(
                      color: Colors.teal.shade300,
                      width: 35,
                    ),
                    bottom: BorderSide(
                      color: Colors.teal.shade300,
                      width: 35,
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
