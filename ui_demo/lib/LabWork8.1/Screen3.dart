import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return Screen3State();
  }

}
class Screen3State extends State<Screen3>
{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: const Text(
          'Mix-up',
        ),
      ),
      body: Center(
        child: Container(
          height: 400,
          width: 400,
          color: Colors.blue,
          child: Align(
            alignment: Alignment.bottomRight,
            child: Container(
              color: const Color(0xffFDFD01),
              height: 350,
              width: 320,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  color: const Color(0xffE81E63),
                  height: 300,
                  width: 275,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      color: const Color(0xffFD9701),
                      height: 250,
                      width: 230,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Container(
                          color: Colors.green,
                          height: 200,
                          width: 180,
                          child: Align(
                            alignment: Alignment.center,
                            child: Container(
                              color: const Color(0xff64FDD9),
                              height: 140,
                              width: 140,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
