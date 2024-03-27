import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LabWork81 extends StatefulWidget {
  const LabWork81({Key? key}) : super(key: key);

  @override
  State<LabWork81> createState() => _LabWork81State();
}

class _LabWork81State extends State<LabWork81> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          color: Colors.black,// Add padding for spacing
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Center(
                  child: Stack(
                    children: [
                      Text(
                        'Hello',
                        style: TextStyle(
                          fontSize: 40.0,
                          color: Colors.red,
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 2, // Adjust underline distance from text
                        child: Container(
                          height: 2, // Height of the underline
                          color: Colors.yellow,
                          // Color of the underline
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 5, // Adjust distance between underlines
                        child: Container(
                          height: 2, // Height of the underline
                          color: Colors.yellow, // Color of the underline
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Stack(
                    children: [
                      Text(
                        'Dart',
                        style: TextStyle(
                          fontSize: 40.0,
                          color: Colors.red,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 2, // Adjust underline distance from text
                        child: Container(
                          height: 2, // Height of the underline
                          color: Colors.yellow, // Color of the underline
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 5, // Adjust distance between underlines
                        child: Container(
                          height: 2, // Height of the underline
                          color: Colors.yellow, // Color of the underline
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: Stack(
                    children: [
                      Text(
                        'Flutter',
                        style: TextStyle(
                          fontSize: 40.0,
                          color: Colors.red,
                            fontWeight: FontWeight.bold

                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 2, // Adjust underline distance from text
                        child: Container(
                          height: 2, // Height of the underline
                          color: Colors.yellow, // Color of the underline
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        bottom: 5, // Adjust distance between underlines
                        child: Container(
                          height: 2, // Height of the underline
                          color: Colors.yellow, // Color of the underline
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
