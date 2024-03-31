import 'package:flutter/material.dart';
import 'package:ui_demo/bottom_right_text.dart';
import 'Task1.dart';
import 'Task2.dart';

class MainMenu40 extends StatelessWidget {
  const MainMenu40({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Lab Work 4.3'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView(
              children: <Widget>[
                ListTile(
                  title: const Text('Task 1'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Screen1()),
                    );
                    print('Clicked Task 1');
                  },
                ),
                ListTile(
                  title: const Text('Task 2'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Screen2()),
                    );
                    print('Clicked Task 2');
                  },
                ),
              ],
            ),
          ),
          BottomRightText(), // Positioned bottom right widget
        ],
      ),
    );
  }
}
