import 'package:flutter/material.dart';
import 'package:ui_demo/bottom_right_text.dart';

import 'Task1.dart';
import 'Task2.dart';
import 'Task3.dart';


class MainMenu842 extends StatelessWidget {
  const MainMenu842({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Lab Work 8.4'),
      ),
      body: Stack(
        children: [
          ListView(
            children: <Widget>[
              ListTile(
                title: const Text('Task 1'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen1()),
                  );
                  print('Clicked Task 1');
                },
              ),
              ListTile(
                title: const Text('Task 2'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen2()),
                  );
                  print('Clicked Task 2');
                },
              ),
              ListTile(
                title: const Text('Task 3'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen3()),
                  );
                  print('Clicked Task 3');
                },
              ),

            ],
          ),
          // Positioned bottom right widget
          BottomRightText(),
        ],
      ),
    );
  }
}


