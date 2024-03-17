import 'package:flutter/material.dart';
import 'package:ui_demo/bottom_right_text.dart';

class Screen1 extends StatefulWidget {
  Screen1({Key? key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          'B  O  L  T',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
      body: Stack(
        children:[ Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: Color(0xFFffc008),

              ),
            ),
            Expanded(
              child: Container(
                color: Colors.black,
                child: Center(
                  child: Icon(
                    Icons.bolt,
                    color: Color(0xFFffc008),
                    size: 70,
                  ),
                )
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Color(0xFFffc008),

              ),
            ),
          ],
        ),
          BottomRightText(),
    ]
      ),
    );
  }
}
