import 'package:flutter/material.dart';

class text extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(

          centerTitle: true,
          title: const Text('Text',
              style: TextStyle(fontStyle: FontStyle.italic)),

      ),

      body:
      const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ // Add some space between image and text
            Text(
              'Hello!',
              style: TextStyle(fontSize: 24,fontStyle: FontStyle.italic
              ),
            ),
            Text(
              'Contact Moksh',
              style: TextStyle(fontSize: 24),
            ),


          ],
        ),
      ),

    );
  }
}
