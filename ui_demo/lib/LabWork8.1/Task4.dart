import 'package:flutter/material.dart';

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