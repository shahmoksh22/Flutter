import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home2()  ,
  ));
}

class Home2 extends StatefulWidget {
  const Home2({super.key});

  @override
  State<Home2> createState() => _HomeState();
}

class _HomeState extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        shadowColor: Colors.grey.withOpacity(0.9),
        backgroundColor: Color(0xffff5252),
        title: const Padding(
          padding: EdgeInsets.only(top: 18.0),
          child: Text(
            'Mission of RNW',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        elevation: 10.0,
        shape: const Border(
            top: BorderSide(
                color: Color(0xffc03d3d),
                width: 50
            )
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Align(
              alignment: Alignment.center,
              child: Container(
                height: 100,
                width: 320,
                padding: EdgeInsets.only(top:25,left: 10),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(252, 161, 172, 100),
                  border: Border(
                      left: BorderSide(
                          color: Colors.red,
                          width: 10,
                      )
                ),
              ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    RichText(text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Shaping "Skills" for "scaling" ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                            color: Colors.black,
                          )
                        )
                      ]
                    )
                    ),
                    RichText(text: TextSpan(
                      children: [
                        TextSpan(
                          text: '-RNW',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                          )
                        )
                      ]
                    )
                    )
                  ],
                ),
            ),
          )
          )
        ],
      ),
    );
  }
}