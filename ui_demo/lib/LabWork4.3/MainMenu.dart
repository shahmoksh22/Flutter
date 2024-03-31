import 'package:flutter/material.dart';
import 'package:ui_demo/bottom_right_text.dart';

class MainMenu2 extends StatelessWidget {
  const MainMenu2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Lab Work 4.3'),
      ),
      body: Stack(
        children: [
          ListView(
            children: <Widget>[
              ListTile(
                title: const Text('Task 1'),
                onTap: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const Home()),
                  // );
                  print('Clicked Task 1');
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


