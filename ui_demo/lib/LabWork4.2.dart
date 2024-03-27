import 'package:flutter/material.dart';

class LabWork82 extends StatefulWidget {
  const LabWork82({Key? key}) : super(key: key);

  @override
  State<LabWork82> createState() => _LabWork82State();
}

class _LabWork82State extends State<LabWork82> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App',
        style: TextStyle(
          color: Colors.white
        ),),
        leading: Icon(Icons.menu), // Leading icon
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Text(
          'Red & White Group of Institutes\nOne Step in Changing Education chain...',
          style: TextStyle(fontSize: 18,color: Colors.red), // Adjust font size as needed
          textAlign: TextAlign.center, // Center the text
        ),
      ),
    );
  }
}
