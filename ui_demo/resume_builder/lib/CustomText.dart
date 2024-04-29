import 'package:flutter/material.dart';

class EducationTextField extends StatelessWidget {
  final String title;
  final String hint;
  final void Function(String?) onSaved;
  final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final TextEditingController? controller; // Added controller parameter

  const EducationTextField({
    required this.title,
    required this.hint,
    required this.onSaved,
    required this.keyboardType,
    this.validator,
    this.controller, // Added controller parameter
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 20, color: Colors.blue),
          ),
          TextFormField(
            controller: controller, // Assigning the controller parameter
            keyboardType: keyboardType,
            decoration: InputDecoration(
              hintText: hint,
              hintStyle: const TextStyle(fontWeight: FontWeight.w300),
              border: const OutlineInputBorder(),
            ),
            onSaved: onSaved,
            validator: validator,
          ),
        ],
      ),
    );
  }
}
