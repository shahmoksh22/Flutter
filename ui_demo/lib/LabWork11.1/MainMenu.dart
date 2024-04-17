import 'package:flutter/material.dart';
import 'package:ui_demo/bottom_right_text.dart';

import 'ButtonTask1.dart';
import 'DrawerScreenTask2.dart';



class MainMenu111 extends StatelessWidget {
  const MainMenu111({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Lab Work 11.1'),
      ),
      body: Stack(
        children: [
          ListView(
            children: <Widget>[
              ListTile(
                title: const Text('File 1'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ButtonTaskScreen()),
                  );
                  print('Clicked File 1');
                },
              ),
              ListTile(
                title: const Text('File 2'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DrawerScreenTask2()),
                  );
                  print('Clicked File 2');
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


