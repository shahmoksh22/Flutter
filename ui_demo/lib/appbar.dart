import 'package:flutter/material.dart';

class appbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        leading: const Icon(
          Icons.keyboard_arrow_left,
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Profile',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
        actions: const <Widget>[
          Icon(
            Icons.notifications,
          ),
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Icon(
              Icons.settings,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.exit_to_app,
            ),
          ),
        ],
      ),
      body: Container(), // Placeholder container for body
    );
  }
}
