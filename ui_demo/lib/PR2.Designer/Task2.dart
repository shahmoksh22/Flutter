import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double leftPadding = screenWidth < 350 ? 16 : 0;
    double fontSize = screenWidth < 350 ? 24 : 28;
    double titleFontSize = screenWidth < 350 ? 24 : 30;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        flexibleSpace: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              'RED & WHITE',
              style: TextStyle(
                color: Colors.white,
                fontSize: titleFontSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RichText(
                text: const TextSpan(
                  text: 'G ',
                  style: TextStyle(fontSize: 28, color: Colors.green),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'R',
                        style: TextStyle(
                            fontSize: 36,
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent)),
                    TextSpan(text: ' APHICS'),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(leftPadding, 30, 143, 0),
                child: RichText(
                  text: const TextSpan(
                    text: 'FLUTT ',
                    style: TextStyle(fontSize: 28, color: Colors.blue),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'E',
                          style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent)),
                      TextSpan(text: ' R'),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(leftPadding, 30, 50, 0),
                child: RichText(
                  text: const TextSpan(
                    text: 'AN ',
                    style: TextStyle(fontSize: 28, color: Colors.green),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'D',
                          style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent)),
                      TextSpan(text: ' ROID'),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(leftPadding, 30, 55, 0),
                child: RichText(
                  text: const TextSpan(
                    text: 'DESIGN ',
                    style: TextStyle(fontSize: 28, color: Colors.yellowAccent),
                    children: <TextSpan>[
                      TextSpan(
                          text: '&',
                          style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent)),
                      TextSpan(text: ' DEVELOP'),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(leftPadding, 30, 35, 0),
                child: RichText(
                  text: const TextSpan(
                    text: '',
                    style: TextStyle(fontSize: 28, color: Colors.blue),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'W',
                          style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent)),
                      TextSpan(text: ' EB'),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(leftPadding, 30, 75, 0),
                child: RichText(
                  text: const TextSpan(
                    text: 'FAS ',
                    style: TextStyle(fontSize: 28, color: Colors.yellowAccent),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'H',
                          style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent)),
                      TextSpan(text: ' ION'),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(leftPadding, 30, 137, 0),
                child: RichText(
                  text: const TextSpan(
                    text: 'ANIMAT ',
                    style: TextStyle(fontSize: 28, color: Colors.cyan),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'I',
                          style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent)),
                      TextSpan(text: ' ON'),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(leftPadding, 30, 4, 0),
                child: RichText(
                  text: const TextSpan(
                    text: 'I ',
                    style: TextStyle(fontSize: 28, color: Colors.blue),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'T',
                          style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent)),
                      TextSpan(text: ' A-CS+'),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(leftPadding, 30, 143, 0),
                child: RichText(
                  text: const TextSpan(
                    text: 'GAM ',
                    style: TextStyle(fontSize: 28, color: Colors.yellowAccent),
                    children: <TextSpan>[
                      TextSpan(
                          text: 'E',
                          style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent)),
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
