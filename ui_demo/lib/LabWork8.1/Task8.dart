import 'package:flutter/material.dart';

class Screen8 extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return Screen8State();
  }
}
class Screen8State extends State<Screen8>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
      ),
      body: Stack(
        children: [
          Align(
            child: Center(
              child:  Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        width: 40,
                        color: Colors.orange
                    )
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0,-0.07),
            child: Container(
                height: 220,
                width: 220,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.orange
                ),
                child: Align(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white
                          ),
                        ),
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white
                          ),
                        ),
                      ],
                    ),
                  ),
                )
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.orange,
        height: 70,
        child: Align(
          alignment: Alignment.center,
          child: Text(
            'Emoji',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
            ),
          ),
        ),
      ),
    );
  }
}