import 'package:flutter/material.dart';
import 'package:ui_demo/Multiplicationof2Numbers.dart';
import 'labwork2.1.dart';
import 'Additionof2Numbers.dart';

class LabWorkChapter2Work2 extends StatefulWidget {
  @override
  _LabWorkChapter2Work2State createState() => _LabWorkChapter2Work2State();
}

class _LabWorkChapter2Work2State extends State<LabWorkChapter2Work2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          'Lab Work 2.2',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
            ListTile(
              title: const Text(
                'Concatenate list elements with hello',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                print('Concatenate list elements with hello');

              },
            ),
            ListTile(
              title: const Text(
                'Add Indian states',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                print('Add Indian states');
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => Multiplicationof2Numbers()),
                // );
              },
            ),

          ],
        ),
      ),
    );
  }
}
