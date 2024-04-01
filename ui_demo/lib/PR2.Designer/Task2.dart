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
            children: [
              Row(
                children: [
                  Expanded(child: Text("G",textAlign: TextAlign.right,style: TextStyle(
                      color: Colors.green,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),)
                  ),
                  Text("R",style: TextStyle(
                      color: Colors.red,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),),
                  Expanded(child: Text("APHICS",style: TextStyle(
                      color: Colors.green,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),)
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(child: Text("FLUTT",textAlign: TextAlign.right,style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),)
                  ),
                  Text("E",style: TextStyle(
                    color: Colors.red,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),),
                  Expanded(child: Text("R",style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),)
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(child: Text("AN",textAlign: TextAlign.right,style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),)
                  ),
                  Text("D",style: TextStyle(
                    color: Colors.red,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),),
                  Expanded(child: Text("ROID",style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),)
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(child: Text("DESIGN",textAlign: TextAlign.right,style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),)
                  ),
                  Text(" & ",style: TextStyle(
                    color: Colors.red,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),),
                  Expanded(child: Text("DEVELOP",style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),)
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(child: Text("",textAlign: TextAlign.right,style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),)
                  ),
                  Text("W",style: TextStyle(
                    color: Colors.red,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),),
                  Expanded(child: Text("EB",style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),)
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(child: Text("FAS",textAlign: TextAlign.right,style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),)
                  ),
                  Text("H",style: TextStyle(
                    color: Colors.red,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),),
                  Expanded(child: Text("ION",style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),)
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(child: Text("ANIMAT",textAlign: TextAlign.right,style: TextStyle(
                    color: Color(0xFF009688),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),)
                  ),
                  Text("I",style: TextStyle(
                    color: Colors.red,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),),
                  Expanded(child: Text("ON",style: TextStyle(
                    color: Color(0xFF009688),
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),)
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(child: Text("I",textAlign: TextAlign.right,style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),)
                  ),
                  Text("T",style: TextStyle(
                    color: Colors.red,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),),
                  Expanded(child: Text("A - CS+",style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),)
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(child: Text("GAM",textAlign: TextAlign.right,style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),)
                  ),
                  Text("E",style: TextStyle(
                    color: Colors.red,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),),
                  Expanded(child: Text("",style: TextStyle(
                    color: Colors.green,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),)
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}