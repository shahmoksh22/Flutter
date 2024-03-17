import 'package:flutter/material.dart';
import 'package:ui_demo/bottom_right_text.dart';

class Screen1 extends StatefulWidget {
  Screen1({Key? key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  int _counter = 0;

  void _incrementCounter(int increment) {
    setState(() {
      _counter += increment;
    });
  }

  void _clearCounter() {
    setState(() {
      _counter = 0;
      //Tried Something New
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Counter Cleared!'),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF54759E),
        centerTitle: true,
        title: Text('Screen 1'),
        leading: IconButton(
          icon: Icon(Icons.menu), // You can use any icon here
          onPressed: () {
            // Add your leading icon's functionality here
          },
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            '$_counter',
            style: TextStyle(fontSize: 104, color: Colors.grey),
          ),
          SizedBox(height: 116),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
                width: 100,
                child: ElevatedButton(
                  onPressed: () => _incrementCounter(2),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF54759E), // Button color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0), // Curved edges
                    ),
                  ),
                  child: Text(
                    '+2',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              SizedBox(
                height: 60,
                width: 100,
                child: ElevatedButton(
                  onPressed: () => _incrementCounter(-2),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF54759E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0), // Curved edges
                    ),
                  ),
                  child: Text(
                    '-2',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 60,
                width: 100,
                child: ElevatedButton(
                  onPressed: () => _incrementCounter(4),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF54759E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0), // Curved edges
                    ),
                  ),
                  child: Text(
                    '+4',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 50,
              ),
              SizedBox(
                height: 60,
                width: 100,
                child: ElevatedButton(
                  onPressed: () => _incrementCounter(-4),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF54759E),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0), // Curved edges
                    ),
                  ),
                  child: Text(
                    '-4',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          SizedBox(
            height: 60,
            width: 200,
            child: ElevatedButton(
              onPressed: _clearCounter,
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF54759E),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0), // Curved edges
                ),
              ),
              child: Text(
                'Clear',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          BottomRightText(),
        ],

      ),


    );
  }
}
