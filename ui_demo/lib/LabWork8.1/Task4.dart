import 'package:flutter/material.dart';
import 'package:ui_demo/bottom_right_text.dart';
class Homepage4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        centerTitle: true,
        title: const Text('Mashal'),
      ),
      body: Stack(
        children: [
          Align(
            child: Center(
              child: Container(
                height: 300,
                width: 300,
                child: Column(
                  children: [
                    const Text(
                      '🔥',
                      style: TextStyle(
                        fontSize: 35,
                      ),
                    ),
                    Container(
                      height: 140,
                      width: 110,
                      decoration: BoxDecoration(
                        color: Colors.brown,
                        border: Border(
                          left: const BorderSide(
                            color: Colors.white,
                            width: 35,
                          ),
                          right: const BorderSide(
                            color: Colors.white,
                            width: 35,
                          ),
                          top: BorderSide(
                            color: Colors.brown.shade400,
                            width: 20,
                          ),
                          bottom: BorderSide(
                            color: Colors.brown.shade400,
                            width: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
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

