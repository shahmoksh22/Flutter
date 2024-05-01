import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:image_picker/image_picker.dart';

class ContactInfo extends StatefulWidget {
  @override
  _ContactInfo createState() => _ContactInfo();
}

class _ContactInfo extends State<ContactInfo> {
  int _currentIndex = 0; // Index to control which child to display
  final GlobalKey<FormState> _formKey =
  GlobalKey<FormState>(); // A key for managing the form
  String _name = ''; // Variable to store the entered name
  String _email = ''; // Variable to store the entered email
  String _phone = ''; // Variable to store the entered email
  String _address1 = ''; // Variable to store the entered email
  String _address2 = ''; // Variable to store the entered email
  String _address3 = ''; // Variable to store the entered email
  XFile? _image;

  Future getImage() async{
    final XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);

    setState(() {
      _image=image;
    });
  }

  void _submitForm() {
    // Check if the form is valid
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save(); // Save the form data
      // You can perform actions with the form data here and extract the details
      print('Name: $_name'); // Print the name
      print('Email: $_email'); // Print the email
      print('Phone: $_phone'); // Print the email
      print('Address: $_address1'); // Print the email
      print('Address: $_address2'); // Print the email
      print('Address: $_address3'); // Print the email

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: const Text('Form Submitted Successfully!'),
          action: SnackBarAction(
            label: 'Home',
            onPressed: () {
              Navigator.pushNamed(context, "/home");
            },
          ),
        ),
      );
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Contact Info'),
      ),
      body: Container(
        color: Colors.black12,
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _currentIndex = 0; // Show the first child
                      });
                    },
                    child: Text('Contact'),
                  ),
                  SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _currentIndex = 1; // Show the second child
                      });
                    },
                    child: Text('Photo'),
                  ),
                ],
              ),
            ),

            // IndexedStack to display children
            Expanded(
              child: IndexedStack(
                index: _currentIndex, // Index of the child to display
                children: [
                  // Child 1
                  SingleChildScrollView(
                    child: Container(
                      child: Form(
                        key:
                        _formKey, // Associate the form key with this Form widget
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Container(
                            color: Colors.white,
                            child: Column(
                              children: <Widget>[
                                Row(
                                  children: [
                                    Icon(
                                      Icons.person,
                                      size: 24,
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            labelText:
                                            'Name'), // Label for the name field
                                        validator: (value) {
                                          // Validation function for the name field
                                          if (value!.isEmpty) {
                                            return 'Please enter your name.'; // Return an error message if the name is empty
                                          }else if (value.length<2){
                                            return 'Please enter your Correct name.';
                                          }else {
                                            return null;
                                          }// Return null if the name is valid
                                        },
                                        onSaved: (value) {
                                          _name = value!; // Save the entered name
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.email,
                                      size: 24,
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            labelText:
                                            'Email'), // Label for the email field
                                        validator: (value) {
                                          // Validation function for the email field
                                          if (value!.isEmpty) {
                                            return 'Email Field is Empty';
                                          } else if (!RegExp(
                                              r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                              .hasMatch(value)) {
                                            return 'Enter the Correct Order of Email';
                                          } else {
                                            return null;
                                          }// Return null if the email is valid
                                        },
                                        onSaved: (value) {
                                          _email = value!; // Save the entered email
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.phone_android,
                                      size: 24,
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            labelText:
                                            'Phone'), // Label for the email field
                                        validator: (value) {
                                          // Validation function for the email field
                                          if (value!.isEmpty) {
                                            return 'Phone Field is Empty';
                                          } else if (value.length > 10) {
                                            return 'No. must be 10 digit long';
                                          } else if (value.length < 10) {
                                            return 'No. must be 10 digit greater';
                                          } else {
                                            return null;
                                          }// Return null if the email is valid
                                        },
                                        onSaved: (value) {
                                          _phone =
                                          value!; // Save the entered email
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      size: 24,
                                    ),
                                    SizedBox(width: 10),
                                    Expanded(
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            labelText:
                                            'Address (Street,Building No.)'), // Label for the email field
                                        validator: (value) {
                                          // Validation function for the email field
                                          if (value!.isEmpty) {
                                            return 'Please enter your Address.'; // Return an error message if the email is empty
                                          }
                                          // You can add more complex validation logic here
                                          return null; // Return null if the email is valid
                                        },
                                        onSaved: (value) {
                                          _address1 =
                                          value!; // Save the entered email
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 31),
                                    Expanded(
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            labelText:
                                            'Address Line 2'), // Label for the email field
                                        validator: (value) {
                                          // Validation function for the email field
                                          if (value!.isEmpty) {
                                            return 'Please enter your Address.'; // Return an error message if the email is empty
                                          }else if(value.length<5){
                                            return 'Please enter your Full Address.';
                                          }else {
                                            // You can add more complex validation logic here
                                            return null;
                                          }// Return null if the email is valid
                                        },
                                        onSaved: (value) {
                                          _address2 =
                                          value!; // Save the entered email
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 31),
                                    Expanded(
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                            labelText:
                                            'Address Line 3'), // Label for the email field
                                        validator: (value) {
                                          // Validation function for the email field
                                          if (value!.isEmpty) {
                                            return 'Please enter your Address.'; // Return an error message if the email is empty
                                          }
                                          // You can add more complex validation logic here
                                          return null; // Return null if the email is valid
                                        },
                                        onSaved: (value) {
                                          _address3 =
                                          value!; // Save the entered email
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 20.0),
                                ElevatedButton(
                                  onPressed:
                                  _submitForm, // Call the _submitForm function when the button is pressed
                                  child: Text('Submit'), // Text on the button
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Child 2
                  Container(
                    child: Center(
                      child: (_image == null) ? Stack(
                        clipBehavior: Clip
                            .none, // Allows the floating button to be positioned outside the container stack
                        children: <Widget>[
                          Container(
                            // The main container with text
                            width: 200, // Set the width of the container
                            height: 200, // Set the height of the container
                            decoration: BoxDecoration(
                              color: Colors.white, // The color of the container
                              borderRadius: BorderRadius.circular(
                                  200), // The border radius of the container
                            ),
                            child: Center(
                              child: Text(
                                'ADD', // The text inside the container
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // The floating action button positioned to the right
                            right: -20, // Position it to the right of the container
                            bottom: 20, // Center it vertically with the container
                            child: FloatingActionButton(
                              onPressed: () {
                                getImage();
                              },
                              child: Icon(Icons.add),
                              backgroundColor:
                              Colors.blue, // The color of the floating button
                            ),
                          ),
                        ],
                      ) : Image.file(File(_image!.path)),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
