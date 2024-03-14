import 'package:flutter/material.dart';
import 'Task6.dart';
import 'package:ui_demo/LabWork8.2/Task3.dart';
import 'package:ui_demo/LabWork8.2/Task2.dart';
import 'Task1.dart';
import 'Task4.dart';
import 'Task5.dart';
import 'package:ui_demo/bottom_right_text.dart';

class MainMenu82 extends StatelessWidget {
  const MainMenu82({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Lab Work 8.2'),
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
              ListTile(
                title: const Text('Task 6'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen6()),
                  );
                  print('Clicked Task 6');
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


