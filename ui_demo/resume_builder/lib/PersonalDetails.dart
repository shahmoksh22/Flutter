import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:resume_builder/CustomText.dart';

class PersonalDetails extends StatefulWidget {
  const PersonalDetails({Key? key}) : super(key: key);

  @override
  State<PersonalDetails> createState() => _PersonalDetails();
}

class _PersonalDetails extends State<PersonalDetails> {
  final _formKey = GlobalKey<FormState>();
  String _nationality='';
  int _marriedstatus = 1;
  Map<String, bool> _language = {
    'English': false,
    'Gujarati': false,
    'Hindi': false
  };

  TextEditingController dateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue,
        title: const Text(
          'Personal Details',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.chevron_left, color: Colors.white, size: 40),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "DOB",
                            textAlign: TextAlign.left,
                            style: const TextStyle(fontSize: 20, color: Colors.blue),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                              controller: dateController, //editing controller of this TextField
                              decoration: InputDecoration(
                                hintStyle: const TextStyle(fontWeight: FontWeight.w300),
                                border: const OutlineInputBorder(),
                                  labelText: "Enter Date" //label text of field
                              ),
                              readOnly: true,  // when true user cannot edit text
                              onTap: () async {
                                DateTime? pickedDate = await showDatePicker(
                                    context: context,
                                    initialDate: DateTime.now(), //get today's date
                                    firstDate:DateTime(1900), //DateTime.now() - not to allow to choose before today.
                                    lastDate: DateTime(2101)
                                );
                                if(pickedDate != null ){
                                  print(pickedDate);  //get the picked date in the format => 2022-07-04 00:00:00.000
                                  String formattedDate = DateFormat('dd/MM/yyyy').format(pickedDate); // format date in required form here we use yyyy-MM-dd that means time is removed
                                  print(formattedDate); //formatted date output using intl package =>  2022-07-04
                                  //You can format date as per your need
        
                                  setState(() {
                                    dateController.text = formattedDate; //set foratted date to TextField value.
                                  });
                                }else{
                                  print("Date is not selected");
                                }
                              }
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Married Status",
                            textAlign: TextAlign.left,
                            style: const TextStyle(fontSize: 20, color: Colors.blue),
                          ),
                        ),
        
                        RadioListTile(
                          title: Text('Single'), // Display the title for option 1
                          value: 1, // Assign a value of 1 to this option
                          groupValue:
                          _marriedstatus, // Use _selectedValue to track the selected option
                          onChanged: (value) {
                            setState(() {
                              _marriedstatus =
                              value!; // Update _selectedValue when option 1 is selected
                            });
                          },
                        ),
        
                        // Create a RadioListTile for option 2
                        RadioListTile(
                          title: Text('Married'), // Display the title for option 2// Display a subtitle for option 2
                          value: 2, // Assign a value of 2 to this option
                          groupValue:
                          _marriedstatus, // Use _selectedValue to track the selected option
                          onChanged: (value) {
                            setState(() {
                              _marriedstatus =
                              value!; // Update _selectedValue when option 2 is selected
                            });
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Languages Known",
                            textAlign: TextAlign.left,
                            style: const TextStyle(fontSize: 20, color: Colors.blue),
                          ),
                        ),
                        SizedBox(
                          height: 180, // Adjust the height as needed
                          child: ListView(
                            children: _language.keys.map((String title) {
                              return CheckboxListTile(
                                title: Text(title),
                                value: _language[title],
                                onChanged: (bool? value) {
                                  setState(() {
                                    _language[title] = value!;
                                  });
                                },
                              );
                            }).toList(),
                          ),
                        ),
        
                        EducationTextField(
                          keyboardType: TextInputType.text,
                          title: 'Nationality',
                          hint: 'Indian',
                          onSaved: (value) {
                            _nationality = value!;
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your Nationality';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 20.0),
                        Center(
                          child: ElevatedButton(
                            onPressed: _submitForm,
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Set background color to blue
                              foregroundColor: MaterialStateProperty.all<Color>(Colors.white), // Set text color to white
                              shape: MaterialStateProperty.all<OutlinedBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0), // Adjust the border radius as needed
                                ),
                              ),
                            ),
                            child: Text('Save'),
                          )
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }



  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      FocusScope.of(context).unfocus();
      // Print all form data
      print('Date: ${dateController.text}');
      print('Married Status: ${_marriedstatus == 1 ? "Single" : "Married"}');
      _language.forEach((language, selected) {
        if (selected) {
          print('Language Known: ${language}');
        }
      });
      print('Nationality: $_nationality');
    }
  }
}





