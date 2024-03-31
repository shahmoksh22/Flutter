import 'package:flutter/material.dart';

class Screen2 extends StatefulWidget {
  const Screen2({super.key});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My RNW',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(text: 'Red & White',style: TextStyle(color: Colors.redAccent,fontSize: 55,decoration: TextDecoration.underline,fontWeight: FontWeight.w700,),
              children: [
                TextSpan(text: '\nMultimedia Educcation',style: TextStyle(color: Colors.redAccent,fontSize: 20,decoration: TextDecoration.none,fontWeight: FontWeight.w700,)),
                TextSpan(text: '\nShaping \"skills\" for \"scaling\" higher...!!',style: TextStyle(color: Colors.redAccent,fontSize: 15,decoration: TextDecoration.none,fontWeight: FontWeight.w700)),
              ],
            ),

          )
      ),
    );
  }
}