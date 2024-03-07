import 'package:flutter/material.dart';
class change extends StatefulWidget {
  const change({super.key});

  @override
  State<change> createState() => _changeState();
}
var message = 'Hello';
class _changeState extends State<change> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(

        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text('Change',
            style: TextStyle(fontStyle: FontStyle.italic)),

      ),

      body:
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text(
          '$message',
          style: const TextStyle(fontSize: 24,fontStyle: FontStyle.italic),
        ),
            ElevatedButton(
              onPressed: () {
                print('Button pressed of Instagram!');
                setState(() {
                  message = 'Changed';
                });
                print(message);
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
