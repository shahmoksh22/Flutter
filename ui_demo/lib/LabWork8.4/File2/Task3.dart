import 'package:flutter/material.dart';
import 'package:ui_demo/bottom_right_text.dart';

class Screen3 extends StatefulWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SPLITTER',
        style: TextStyle(
          color: Colors.white,
          fontSize: 40
        ),),
        backgroundColor: Colors.black,// Set the title of the AppBar
      ),
      body: Stack(
        children:[ Container(
          color: Colors.orange,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            color: Color(0xFFffc008),
                            height: 100,
                            margin: EdgeInsets.all(10),
                            child: Center(child: Text("1",
                            style: TextStyle(
                              fontSize: 30
                            ),)),
                            width: double.infinity,
                          ),
                        ),
                      ),
                      Container(
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            color: Color(0xFFffc008),
                            height: 100,
                            margin: EdgeInsets.all(10),
                            child: Center(child: Text("2",
                              style: TextStyle(
                                  fontSize: 30
                              ),)),
                            width: double.infinity,
                          ),
                        ),
                      ),
                      Container(
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            color: Color(0xFFffc008),
                            height: 100,
                            margin: EdgeInsets.all(10),
                            child: Center(child: Text("3",
                              style: TextStyle(
                                  fontSize: 30
                              ),)),
                            width: double.infinity,
                          ),
                        ),
                      ),
                      Container(
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            color: Color(0xFFffc008),
                            height: 100,
                            margin: EdgeInsets.all(10),
                            child: Center(child: Text("4",
                              style: TextStyle(
                                  fontSize: 30
                              ),)),
                            width: double.infinity,
                          ),
                        ),
                      ),
                      Container(
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            color: Color(0xFFffc008),
                            height: 100,
                            margin: EdgeInsets.all(10),
                            child: Center(child: Text("5",
                              style: TextStyle(
                                  fontSize: 30
                              ),)),
                            width: double.infinity,
                          ),
                        ),
                      ),
                      Container(
                        child: Align(
                          alignment: Alignment.center,
                          child: Container(
                            color: Color(0xFFffc008),
                            height: 100,
                            margin: EdgeInsets.all(10),
                            child: Center(child: Text("6",
                              style: TextStyle(
                                  fontSize: 30
                              ),)),
                            width: double.infinity,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        color: Colors.grey,
                        margin: EdgeInsets.all(10),
                        width: 80,
                        height: double.infinity, // Match the height of its parent
                        child: Center(
                          child: Text(
                            "1",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.grey,
                        margin: EdgeInsets.all(10),
                        width: 80,
                        height: double.infinity, // Match the height of its parent
                        child: Center(
                          child: Text(
                            "2",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.grey,
                        margin: EdgeInsets.all(10),
                        width: 80,
                        height: double.infinity, // Match the height of its parent
                        child: Center(
                          child: Text(
                            "3",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.grey,
                        margin: EdgeInsets.all(10),
                        width: 80,
                        height: double.infinity, // Match the height of its parent
                        child: Center(
                          child: Text(
                            "4",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.grey,
                        margin: EdgeInsets.all(10),
                        width: 80,
                        height: double.infinity, // Match the height of its parent
                        child: Center(
                          child: Text(
                            "5",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.grey,
                        margin: EdgeInsets.all(10),
                        width: 80,
                        height: double.infinity, // Match the height of its parent
                        child: Center(
                          child: Text(
                            "6",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.grey,
                        margin: EdgeInsets.all(10),
                        width: 80,
                        height: double.infinity, // Match the height of its parent
                        child: Center(
                          child: Text(
                            "7",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        color: Colors.grey,
                        margin: EdgeInsets.all(10),
                        width: 80,
                        height: double.infinity, // Match the height of its parent
                        child: Center(
                          child: Text(
                            "8",
                            style: TextStyle(
                              fontSize: 30,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
          BottomRightText(),
      ]
      ),
    );
  }
}