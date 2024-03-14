import 'package:flutter/material.dart';
import 'package:ui_demo/bottom_right_text.dart';
class Screen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text('Letter Cover'),
      ),
      body: Stack(
        children: [
          Align(
            child: Center(
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                  color: Colors.green,
                  border: Border(
                    left: const BorderSide(
                      color: Colors.green,
                      width: 110,
                    ),
                    right: const BorderSide(
                      color: Colors.green,
                      width: 110,
                    ),
                    top: BorderSide(
                      color: Colors.green.shade300,
                      width: 110,
                    ),
                    bottom: BorderSide(
                      color: Colors.green.shade300,
                      width: 110,
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

