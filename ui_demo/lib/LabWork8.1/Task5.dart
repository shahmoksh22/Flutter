import 'package:flutter/material.dart';

class Screen5 extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return Screen5State();
  }

}
class Screen5State extends State<Screen5>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text(
            'Letter Cover'
        ),
      ),
      body: Align(
        child: Center(
          child: Container(
            height: 250,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.green,
                border: Border(
                    left: BorderSide(
                        color: Colors.green,
                        width: 110
                    ),
                    right: BorderSide(
                        color: Colors.green,
                        width: 110
                    ),
                    top: BorderSide(
                        color: Colors.green.shade300,
                        width: 110
                    ),
                    bottom: BorderSide(
                        color: Colors.green.shade300,
                        width: 110
                    )
                )
            ),
          ),
        ),
      ),
    );
  }

}