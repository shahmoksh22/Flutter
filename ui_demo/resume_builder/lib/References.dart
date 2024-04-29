import 'package:flutter/material.dart';
import 'package:resume_builder/CustomText.dart';

class References extends StatefulWidget {
  const References({Key? key}) : super(key: key);

  @override
  State<References> createState() => _ReferencesState();
}

class _ReferencesState extends State<References> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _referencesNameController = TextEditingController();
  TextEditingController _designationController = TextEditingController();
  TextEditingController _organizationController = TextEditingController();

  @override
  void dispose() {
    _referencesNameController.dispose();
    _designationController.dispose();
    _organizationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('References'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.chevron_left),
        ),
      ),
      backgroundColor: Colors.grey[300],
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            child: Column(
              children: [
                EducationTextField(
                  title: 'References Name',
                  hint: 'Suresh Shah',
                  controller: _referencesNameController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter references name';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    // Handle saving references name
                  },
                  keyboardType: TextInputType.text,
                ),
                EducationTextField(
                  title: 'Designation',
                  hint: 'Marketing Manager, ID- 342332',
                  controller: _designationController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter designation';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    // Handle saving designation
                  },
                  keyboardType: TextInputType.text,
                ),
                EducationTextField(
                  title: 'Organization/Institute',
                  hint: 'Green Energy Pvt. Ltd',
                  controller: _organizationController,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter organization/institute';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    // Handle saving organization/institute
                  },
                  keyboardType: TextInputType.text,
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
    );
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Printing values
      print('References Name: ${_referencesNameController.text}');
      print('Designation: ${_designationController.text}');
      print('Organization/Institute: ${_organizationController.text}');
    }
  }
}
