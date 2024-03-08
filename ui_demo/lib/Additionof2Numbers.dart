import 'package:flutter/material.dart';
class Additionof2Numbers extends StatefulWidget {
  const Additionof2Numbers({super.key});

  @override
  State<Additionof2Numbers> createState() => _Additionof2Numbers();
}
TextEditingController _controller1 = TextEditingController();
TextEditingController _controller2 = TextEditingController();
double _sum = 0;
class _Additionof2Numbers extends State<Additionof2Numbers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('Additon of 2 Numbers',
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
                    _sum = num1 + num2;
                  });
                },
                child: const Text('Calculate Sum'),
              ),
              const SizedBox(height: 20.0),
              Text(
                'The sum is: $_sum',
                style: const TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
