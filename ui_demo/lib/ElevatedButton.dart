import 'package:flutter/material.dart';

class ElevatedButtonfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(

          backgroundColor: Colors.white,
          centerTitle: true,
          title: const Text('ElevatedButton',
              style: TextStyle(fontStyle: FontStyle.italic)),

      ),

      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ElevatedButton(
              onPressed: () {
                print('Button pressed of Instagram!');
                // Add your button onPressed logic here
                // This function will be called when the button is pressed
              },
              child: const Text('Instagram'), // Add your button text here
            ),



          ],
        ),
      ),

    );
  }
}
