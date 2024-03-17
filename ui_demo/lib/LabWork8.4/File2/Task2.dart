import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_demo/bottom_right_text.dart';

class Screen2 extends StatefulWidget {
  Screen2({Key? key}) : super(key: key);

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF212121),
        centerTitle: true,
        title: Text(
          'THE WALL',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white
          ),
        ),
      ),
      body: Stack(
        children:[ Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.only(right: 10,top: 10,bottom: 10),
                      color: Colors.brown,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      color: Colors.brown,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.only(left: 10,top: 10,bottom: 10),
                      color: Colors.brown,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      margin: EdgeInsets.only(right: 10,top: 10,bottom: 10),
                      color: Colors.brown,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      color: Colors.brown,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      margin: EdgeInsets.only(left: 10,top: 10,bottom: 10),
                      color: Colors.brown,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.only(right: 10,top: 10,bottom: 10),
                      color: Colors.brown,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      color: Colors.brown,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.only(left: 10,top: 10,bottom: 10),
                      color: Colors.brown,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      margin: EdgeInsets.only(right: 10,top: 10,bottom: 10),
                      color: Colors.brown,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      color: Colors.brown,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      margin: EdgeInsets.only(left: 10,top: 10,bottom: 10),
                      color: Colors.brown,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.only(right: 10,top: 10,bottom: 10),
                      color: Colors.brown,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      color: Colors.brown,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.only(left: 10,top: 10,bottom: 10),
                      color: Colors.brown,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      margin: EdgeInsets.only(right: 10,top: 10,bottom: 10),
                      color: Colors.brown,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      color: Colors.brown,
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Container(
                      margin: EdgeInsets.only(left: 10,top: 10,bottom: 10),
                      color: Colors.brown,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.only(right: 10,top: 10,bottom: 10),
                      color: Colors.brown,
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Container(
                      margin: EdgeInsets.all(10),
                      color: Colors.brown,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: EdgeInsets.only(left: 10,top: 10,bottom: 10),
                      color: Colors.brown,
                    ),
                  )
                ],
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
