import 'package:flutter/material.dart';

class Tablegenerator extends StatefulWidget {
  const Tablegenerator({Key? key}) : super(key: key);

  @override
  State<Tablegenerator> createState() => _Tablegenerator();
}

class _Tablegenerator extends State<Tablegenerator> {
  TextEditingController _controller1 = TextEditingController();
  String _tableResult = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text('Table Generator', style: TextStyle(fontStyle: FontStyle.italic)),
      ),
      body: Center(
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
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    // Generate the table when the button is pressed
                    generateTable();
                  });
                },
                child: const Text('Generate Table'),
              ),
              const SizedBox(height: 20.0),
              Text(
                _tableResult,
                style: const TextStyle(fontSize: 20.0),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void generateTable() {
    // Retrieve the number from the text field
    double num = double.tryParse(_controller1.text) ?? 0;
    // Generate the table
    String table = '';
    for (int i = 1; i <= 10; i++) {
      table += '$num x $i = ${num * i}\n';
    }
    setState(() {
      // Update the state with the generated table
      _tableResult = table;
    });
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed
    _controller1.dispose();
    super.dispose();
  }
}
