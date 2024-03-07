import 'dart:io';

void main() {
  stdout.write('Enter your name: '); // Prompts the user to enter their name
  String? name = stdin.readLineSync(); // Reads user input from the console
  print('Hello, $name!'); // Prints a greeting with the user's input
}
