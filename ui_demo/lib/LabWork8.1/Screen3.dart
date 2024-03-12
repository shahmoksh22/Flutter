import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text(
          'Mix-up',
        ),
      ),
      body: Stack(
        children: [
          Center(
            child: Container(
              height: 400,
              width: 400,
              color: Colors.blue,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  color: const Color(0xffFDFD01),
                  height: 350,
                  width: 320,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      color: const Color(0xffE81E63),
                      height: 300,
                      width: 275,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          color: const Color(0xffFD9701),
                          height: 250,
                          width: 230,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              color: Colors.green,
                              height: 200,
                              width: 180,
                              child: Align(
                                alignment: Alignment.center,
                                child: Container(
                                  color: const Color(0xff64FDD9),
                                  height: 140,
                                  width: 140,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
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