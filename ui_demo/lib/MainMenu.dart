import 'package:flutter/material.dart';
import 'package:ui_demo/LabWorkChapter2Work1.dart';
import 'package:ui_demo/LabWorkChapter2Work2.dart';

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
      body: ListView(
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
          ),ListTile(
            title: Text('Lab Work 2.2'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LabWorkChapter2Work2()),
              );
              print('Clicked Lab Work 2.2');
            },
          ),


          // Add more list tiles for additional menu items
        ],
      ),
    );
  }
}
