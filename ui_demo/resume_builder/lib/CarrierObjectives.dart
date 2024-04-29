import 'package:flutter/material.dart';

class CarrierObjective extends StatefulWidget {
  const CarrierObjective({Key? key}) : super(key: key);

  @override
  State<CarrierObjective> createState() => _CarrierObjectiveState();
}

class _CarrierObjectiveState extends State<CarrierObjective> {
  final _formKey = GlobalKey<FormState>(); // A key for managing the form
  String _carrierobj = ''; // Variable to store the entered carrier objective
  String _currentdesignation = ''; // Variable to store the entered current designation

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.chevron_left,
            color: Colors.white,
            size: 35,
          ),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
        titleTextStyle: const TextStyle(fontSize: 25, color: Colors.white),
        title: const Text('Carrier Objective'),
        toolbarHeight: 150,
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Carrier Objective',
                                style: TextStyle(fontSize: 30, color: Colors.blue),
                              ),
                              TextFormField(
                                maxLines: 7,
                                decoration: InputDecoration(
                                  hintText: 'Description',
                                  hintStyle: TextStyle(fontWeight: FontWeight.w300),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your carrier objective';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  _carrierobj = value!;
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Card(
                        child: Padding(
                          padding: const EdgeInsets.all(18.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Current Designation',
                                style: TextStyle(fontSize: 30, color: Colors.blue),
                              ),
                              TextFormField(
                                maxLines: 1,
                                decoration: InputDecoration(
                                  hintText: 'Software Eng.',
                                  hintStyle: TextStyle(fontWeight: FontWeight.w300),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(18.0),
                                  ),
                                ),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your current designation';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  _currentdesignation = value!;
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: _submitForm,
                        child: Text('Submit'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Now you can use _carrierobj and _currentdesignation variables
      print('Carrier Objective: $_carrierobj');
      print('Current Designation: $_currentdesignation');
      // Perform further actions with the data
    }
  }
}
