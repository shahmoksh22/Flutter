import 'package:flutter/material.dart';
import 'package:ui_demo/bottom_right_text.dart';

import 'Task1.dart';
import 'Task2.dart';



class MainMenuPR2 extends StatelessWidget {
  const MainMenuPR2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Pr2.Designer'),
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
                    MaterialPageRoute(builder: (context) => Fruits()),
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

            ],
          ),
          // Positioned bottom right widget
          BottomRightText(),
        ],
      ),
    );
  }
}


