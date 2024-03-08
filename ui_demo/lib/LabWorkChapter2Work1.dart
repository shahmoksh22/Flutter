import 'package:flutter/material.dart';
import 'package:ui_demo/Multiplicationof2Numbers.dart';
import 'package:ui_demo/Tablegenerator.dart';
import 'labwork2.1.dart';
import 'Additionof2Numbers.dart';

class LabWorkChapter2Work1 extends StatefulWidget {
  @override
  _LabWorkChapter2Work1State createState() => _LabWorkChapter2Work1State();
}

class _LabWorkChapter2Work1State extends State<LabWorkChapter2Work1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          'Lab Work 2.1',
          style: TextStyle(fontStyle: FontStyle.italic),
        ),
      ),
      body: Center(
        child: ListView(
          padding: const EdgeInsets.all(20.0),
          children: [
            ListTile(
              title: const Text(
                'Addition of two different numbers',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                print('Addition of two different numbers');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Additionof2Numbers()),
                );
              },
            ),
            ListTile(
              title: const Text(
                'Multiplication of two user given numbers',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                print('Multiplication of two user given numbers');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Multiplicationof2Numbers()),
                );
              },
            ),
            ListTile(
              title: const Text(
                'Print multiplication table of a user given number',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                print('Print multiplication table of a user given number');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Tablegenerator()),
                );
              },
            ),
            ListTile(
              title: const Text(
                'Generate multiplication tables between two provided values',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                print(
                    'Generate multiplication tables between two provided values');
                generateMultiplicationTables();
              },
            ),
            ListTile(
              title: const Text(
                'Find the cube of any number',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                print('Find the cube of any number');
                findCube();
              },
            ),
            ListTile(
              title: const Text(
                'Print full name by getting first name and last name',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                print('Print full name by getting first name and last name');
                printFullName();
              },
            ),
            ListTile(
              title: const Text(
                'Find Simple Interest',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                print('Find Simple Interest');
                findSimpleInterest();
              },
            ),
            ListTile(
              title: const Text(
                'Check if a number is even or odd',
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                print('Check if a number is even or odd');
                checkEvenOrOdd();
              },
            ),
          ],
        ),
      ),
    );
  }
}
