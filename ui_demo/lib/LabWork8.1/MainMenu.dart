import 'package:flutter/material.dart';
import 'package:ui_demo/LabWork8.1/Screen3.dart';
import 'package:ui_demo/LabWork8.1/Task4.dart';
import 'package:ui_demo/LabWork8.1/Task5.dart';
import 'package:ui_demo/LabWork8.1/Task6.dart';
import 'package:ui_demo/LabWork8.1/Task7.dart';
import 'package:ui_demo/LabWork8.1/Task8.dart';
import 'Task1.dart';
import 'Task2.dart';
import 'package:ui_demo/bottom_right_text.dart';

class MainMenu2 extends StatelessWidget {
  const MainMenu2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Lab Work 8.1'),
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
                    MaterialPageRoute(builder: (context) => const Home()),
                  );
                  print('Clicked Task 1');
                },
              ),
              ListTile(
                title: const Text('Task 2'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Home2()),
                  );
                  print('Task 2');
                },
              ),
              ListTile(
                title: const Text('Task 3'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen3()),
                  );
                  print('Task 3');
                },
              ),
              ListTile(
                title: const Text('Task 4'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage4()),
                  );
                  print('Task 4');
                },
              ),
              ListTile(
                title: const Text('Task 5'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen5()),
                  );
                  print('Task 5');
                },
              ),
              ListTile(
                title: const Text('Task 6'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen6()),
                  );
                  print('Task 6');
                },
              ),
              ListTile(
                title: const Text('Task 7'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen7()),
                  );
                  print('Task 7');
                },
              ),
              ListTile(
                title: const Text('Task 8'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Screen8()),
                  );
                  print('Task 8');
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


