import 'package:flutter/material.dart';

class Screen7 extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return Screen7State();
  }

}
class Screen7State extends State<Screen7>
{
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
      body: Align(
        child: Center(
          child: Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border(
                      left: BorderSide(
                          color: Color(0xffd5d5d5),
                          width: 60
                      ),
                      right: BorderSide(
                          color: Color(0xffd5d5d5),
                          width: 60
                      ),
                      top: BorderSide(
                          color: Colors.black,
                          width: 30
                      ),
                      bottom: BorderSide(
                          color: Colors.black,
                          width: 30
                      )
                  )
              )
          ),
        ),
      ),
    );
  }

}