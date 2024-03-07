import 'package:flutter/material.dart';

class ui extends StatelessWidget {
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
        title: const Text('Profile',
            style: TextStyle(fontStyle: FontStyle.italic)),
          actions: const <Widget>[
            Icon(
              Icons.notifications,
            ),
      Padding(
        padding: EdgeInsets.only(left:8),
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
          ]
      ),

      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/profile.jpeg', // Replace with your image path
              width: 150, // Adjust the width as needed
              height: 150, // Adjust the height as needed
            ),
            const SizedBox(height: 20), // Add some space between image and text
            const Text(
              'Hello!',
              style: TextStyle(fontSize: 24,fontStyle: FontStyle.italic
              ),
            ),
            const Text(
              'Contact Moksh',
              style: TextStyle(fontSize: 24),
            ),
            ElevatedButton(
              onPressed: () {
                print('Button pressed of Instagram!');
                // Add your button onPressed logic here
                // This function will be called when the button is pressed
              },
              child: const Text('Instagram'), // Add your button text here
            ),
            ElevatedButton(
              onPressed: () {
                print('Button pressed of Facebook!');
                // Add your button onPressed logic here
                // This function will be called when the button is pressed
              },
              child: const Text('Facebook'), // Add your button text here
            ),
            ElevatedButton(
              onPressed: () {
                print('Button pressed of WhatsApp!');
                // Add your button onPressed logic here
                // This function will be called when the button is pressed
              },
              child: const Text('WhatsApp'), // Add your button text here
            ),
            ElevatedButton(
              onPressed: () {
                print('Button pressed of SnapChat!');
                // Add your button onPressed logic here
                // This function will be called when the button is pressed
              },
              child: const Text('SnapChat'), // Add your button text here
            ),
            ElevatedButton(
              onPressed: () {
                print('Button pressed of Telegram!');
                // Add your button onPressed logic here
                // This function will be called when the button is pressed
              },

              child: const Text('Telegram'), // Add your button text here
            ),

          ],
        ),
      ),

    );
  }
}
