import 'package:flutter/material.dart';
import 'package:resume_builder/CustomText.dart';

class Education extends StatefulWidget {
  const Education({Key? key}) : super(key: key);

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  final _formKey = GlobalKey<FormState>();

  String _courseDegree = '';
  String _schoolCollege = '';
  String _percentageOrCGPA = '';
  String _yearOfPass = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          'Education',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.chevron_left, color: Colors.white, size: 40),
        ),
      ),
      body: ListView(
        children: [
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                child: Column(
                  children: [
                    EducationTextField(
                      keyboardType: TextInputType.text,
                      title: 'Course/Degree',
                      hint: 'B. Tech Information Technology',
                      onSaved: (value) {
                        _courseDegree = value!;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your course/degree';
                        }
                        return null;
                      },
                    ),
                    EducationTextField(
                      keyboardType: TextInputType.text,
                      title: 'School/College/Institute',
                      hint: 'Bhagavan Mahavir University',
                      onSaved: (value) {
                        _schoolCollege = value!;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your school/college/institute';
                        }
                        return null;
                      },
                    ),
                    EducationTextField(
                      keyboardType: TextInputType.text,
                      title: 'Percentage (or) CGPA',
                      hint: '70% (or) 7.0 CGPA',
                      onSaved: (value) {
                        _percentageOrCGPA = value!;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your percentage or CGPA';
                        }
                        return null;
                      },
                    ),
                    EducationTextField(
                      title: 'Year of Pass',
                      hint: '2019',
                      keyboardType: TextInputType.number,
                      onSaved: (value) {
                        _yearOfPass = value!;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your year of pass';
                        }
                        return null;
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: _submitForm,
                        child: const Text('Submit'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Now you can use _courseDegree, _schoolCollege, _percentageOrCGPA, and _yearOfPass variables
      print('Course/Degree: $_courseDegree');
      print('School/College/Institute: $_schoolCollege');
      print('Percentage (or) CGPA: $_percentageOrCGPA');
      print('Year of Pass: $_yearOfPass');
      // Perform further actions with the data
    }
  }
}
