import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 150, // Adjust the width as needed
          height: 150, // Adjust the height as needed
          child: Image.asset(
            'assets/images/logo.png',
            fit: BoxFit.contain, // Adjust the fit as needed
          ),
        ),
      ),
    );
  }
}
