import 'package:flutter/material.dart';

class images extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Images', style: TextStyle(fontStyle: FontStyle.italic)),
      ), // Add comma here
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/profile.jpeg', // Replace with your image path
              width: 150, // Adjust the width as needed
              height: 150, // Adjust the height as needed
            ),
          ],
        ),
      ),
    );
  }
}
