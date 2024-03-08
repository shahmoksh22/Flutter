import 'package:flutter/material.dart';
class Multiplicationof2Numbers extends StatefulWidget {
  const Multiplicationof2Numbers({super.key});

  @override
  State<Multiplicationof2Numbers> createState() => _Multiplicationof2Numbers();
}
TextEditingController _controller1 = TextEditingController();
TextEditingController _controller2 = TextEditingController();
double _result = 0;
class _Multiplicationof2Numbers extends State<Multiplicationof2Numbers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('Multiplication of 2 Numbers',
            style: TextStyle(fontStyle: FontStyle.italic)),

      ),

      body:
      Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
                controller: _controller1,
                decoration: const InputDecoration(
                  labelText: 'Enter first number',
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20.0),
              TextField(
                controller: _controller2,
                decoration: const InputDecoration(
                  labelText: 'Enter second number',
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  double num1 = double.parse(_controller1.text);
                  double num2 = double.parse(_controller2.text);
                  setState(() {
                    _result = num1 * num2;
                  });
                },
                child: const Text('Calculate Sum'),
              ),
              const SizedBox(height: 20.0),
              Text(
                'The Multiplication is: $_result',
                style: const TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
