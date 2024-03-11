import 'package:flutter/material.dart';

class Screen6 extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return Screen6State();
  }

}
class Screen6State extends State<Screen6>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text(
            '3D Cube'
        ),
      ),
      body: Align(
        child: Center(
          child: Container(
            height: 210,
            width: 200,
            decoration: BoxDecoration(
                color: Colors.teal,
                border: Border(
                    left: BorderSide(
                        color: Colors.teal.shade400,
                        width: 40
                    ),
                    right: BorderSide(
                        color: Colors.teal.shade400,
                        width: 40
                    ),
                    top: BorderSide(
                        color: Colors.teal.shade300,
                        width: 35
                    ),
                    bottom: BorderSide(
                        color: Colors.teal.shade300,
                        width: 35
                    )
                )
            ),
          ),
        ),
      ),
    );
  }
}