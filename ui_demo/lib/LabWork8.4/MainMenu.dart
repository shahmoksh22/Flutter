import 'package:flutter/material.dart';
import 'package:ui_demo/LabWork8.4/File1/MainMenu.dart';
import 'package:ui_demo/LabWork8.4/File2/MainMenu.dart';
import 'package:ui_demo/bottom_right_text.dart';



class MainMenu84 extends StatelessWidget {
  const MainMenu84({Key? key}) : super(key: key);

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
                title: const Text('File 1'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainMenu841()),
                  );
                  print('Clicked File 1');
                },
              ),
              ListTile(
                title: const Text('File 2'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainMenu842()),
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


