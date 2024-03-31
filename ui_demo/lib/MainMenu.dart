import 'package:flutter/material.dart';
import 'package:ui_demo/LabWork4.1.dart';
import 'package:ui_demo/LabWork4.2.dart';
import 'package:ui_demo/LabWork4.3/MainMenu.dart';
import 'package:ui_demo/LabWork8.1/MainMenu.dart';
import 'package:ui_demo/LabWork8.2/MainMenu.dart';
import 'package:ui_demo/LabWork8.4/MainMenu.dart';
import 'package:ui_demo/LabWork8.5&8.6.dart';
import 'package:ui_demo/LabWorkChapter2Work1.dart';
import 'package:ui_demo/LabWorkChapter2Work2.dart';
import 'package:ui_demo/MokshDemoCode.dart';
import 'package:ui_demo/PR2.Designer/MainMenu.dart';

import 'demoharshsir.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Main Menu'),
      ),
      body: Stack(
        children: [
          ListView(
            children: <Widget>[
              ListTile(
                title: Text('Lab Work 2.1'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LabWorkChapter2Work1()),
                  );
                  print('Clicked Lab Work 2.1');
                },
              ),
              ListTile(
                title: Text('Lab Work 2.2'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LabWorkChapter2Work2()),
                  );
                  print('Clicked Lab Work 2.2');
                },
              ),
              ListTile(
                title: Text('Lab Work 2.3'),
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => LabWorkChapter2Work2()),
                  // );
                  print('Clicked Lab Work 2.3');
                },
              ),
              ListTile(
                title: Text('Lab Work 2.4'),
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => LabWorkChapter2Work2()),
                  // );
                  print('Clicked Lab Work 2.4');
                },
              ),ListTile(
                title: Text('Lab Work 4.1'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LabWork81()),
                  );
                  print('Clicked Lab Work 4.1');
                },
              ),ListTile(
                title: Text('Lab Work 4.2'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LabWork82()),
                  );
                  print('Clicked Lab Work 4.2');
                },
              ),ListTile(
                title: Text('Lab Work 4.3'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainMenu40()),
                  );
                  print('Clicked Lab Work 4.3');
                },
              ),
              ListTile(
                title: Text('Lab Work 6.4'),
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => LabWorkChapter2Work2()),
                  // );
                  print('Clicked Lab Work 6.4');
                },
              ),
              ListTile(
                title: Text('Lab Work 6.5'),
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => LabWorkChapter2Work2()),
                  // );
                  print('Clicked Lab Work 6.5');
                },
              ),

              ListTile(
                title: Text('PR.2'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainMenuPR2()),
                  );
                  print('Clicked PR.2');
                },
              ),
              ListTile(
                title: Text('PR.3 OOP Architecture'),
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => LabWorkChapter2Work2()),
                  // );
                  print('Clicked PR.3 OOP Architecture');
                },
              ),
              ListTile(
                title: Text('Lab Work 8.1'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainMenu2()),
                  );
                  print('Clicked Lab Work 8.1');
                },
              ),
              ListTile(
                title: Text('Lab Work 8.2'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MainMenu82()),
                  );
                  print('Clicked Lab Work 8.2');
                },
              ),ListTile(
                title: Text('Lab Work 8.4'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MainMenu84()),
                  );
                  print('Clicked Lab Work 8.4');
                },
              ),ListTile(
                title: Text('Lab Work 8.5 & 8.6'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Screen85()),
                  );
                  print('Clicked Lab Work 8.5 & 8.6');
                },
              ),ListTile(
                title: Text('Harsh Sir'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProductScreen()),
                  );
                  print('Clicked Harsh Sir');
                },
              ),
            ],
          ),
          Positioned(
            bottom: 10,
            right: 10,
            child: Text(
              'Made By ShahMoksh22',
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
