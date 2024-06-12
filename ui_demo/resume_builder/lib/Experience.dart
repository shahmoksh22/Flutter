import 'package:flutter/material.dart';
import 'package:resume_builder/CustomText.dart';

class Experience extends StatefulWidget {
  const Experience({Key? key}) : super(key: key);

  @override
  State<Experience> createState() => _ExperienceState();
}

class _ExperienceState extends State<Experience> {
  final _formKey = GlobalKey<FormState>();

  String _companyname = '';
  String _schoolCollege = '';
  String _roles = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          'Experience',
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
                      title: 'Company Name',
                      hint: 'Google',
                      onSaved: (value) {
                        _companyname = value!;
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
                      title: 'Roles(optional)',
                      hint: 'Working With Team Members',
                      onSaved: (value) {
                        _roles = value!;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter your percentage or CGPA';
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
      print('Company Name: $_companyname');
      print('School/College/Institute: $_schoolCollege');
      print('Roles: $_roles');
      // Perform further actions with the data
    }
  }
}
