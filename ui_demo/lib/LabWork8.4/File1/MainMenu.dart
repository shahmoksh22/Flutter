import 'package:flutter/material.dart';
import 'package:ui_demo/bottom_right_text.dart';

import 'Task1.dart';
import 'Task2.dart';
import 'Task3.dart';
import 'Task4.dart';
import 'Task5.dart';

class MainMenu841 extends StatelessWidget {
  const MainMenu841({Key? key}) : super(key: key);

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
              ListTile(
                title: const Text('Task 4'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen4()),
                  );
                  print('Clicked Task 4');
                },
              ),
              ListTile(
                title: const Text('Task 5'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen5()),
                  );
                  print('Clicked Task 5');
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


