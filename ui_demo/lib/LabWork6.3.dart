import 'dart:io';

void main() {
  bool exit = false;

  while (!exit) {
    print("Choose an option:");
    print("1. Convert given distance in appropriate feet and inches.");
    print("2. Age Calculator.");
    print("3. Login System.");
    print("4. use of cascade operator.");
    print("0. Exit");

    int option = int.parse(stdin.readLineSync()!);

    switch (option) {
      case 1:
        Task1();
        break;
      case 2:
        Task2();
        break;
      case 3:
        Task3();
        break;
      case 4:
        Task4();
        break;

      case 0:
        exit = true;
        print("Exiting program...");
        break;
      default:
        print("Invalid option");
    }
  }
}
class DistanceConverter {
  int feet;
  int inches;

  DistanceConverter({required this.feet, required this.inches});

  void convertToFeetAndInches() {
    int totalInches = feet * 12 + inches;
    int convertedFeet = totalInches ~/ 12; // Using integer division to get the whole number of feet
    int convertedInches = totalInches % 12; // Using modulo operator to get the remaining inches

    print('Input: $feet feet and $inches inches');
    print('Output: $convertedFeet feet and $convertedInches inches');
  }
}

void Task1() {
  print('1. Write a Dart Class which convert given distance in appropriate feet and inches.');
  print('e.g. Input: 5 feet and 15 inch');
  print('Output: 6 feet and 3 inch');

  stdout.write('Enter feet: ');
  int feet = int.parse(stdin.readLineSync()!);

  stdout.write('Enter inches: ');
  int inches = int.parse(stdin.readLineSync()!);

  DistanceConverter converter = DistanceConverter(feet: feet, inches: inches);
  converter.convertToFeetAndInches();
}
class AgeCalculator {
  DateTime birthDate;

  AgeCalculator({required this.birthDate});

  void calculateAge() {
    DateTime now = DateTime.now();
    Duration difference = now.difference(birthDate);

    int years = difference.inDays ~/ 365;
    int months = (difference.inDays % 365) ~/ 30;
    int days = difference.inDays % 30;

    print('Total Years: $years, Months: $months, Days: $days');
  }
}

void Task2() {
  print('Enter your birth date (YYYY-MM-DD):');
  stdout.write('Year: ');
  int year = int.parse(stdin.readLineSync()!);

  stdout.write('Month: ');
  int month = int.parse(stdin.readLineSync()!);

  stdout.write('Day: ');
  int day = int.parse(stdin.readLineSync()!);

  DateTime birthDate = DateTime(year, month, day);
  AgeCalculator calculator = AgeCalculator(birthDate: birthDate);
  calculator.calculateAge();
}
class User {
  String email;
  String password;

  User({required this.email, required this.password});
}

class LoginSystem {
  List<Map<String, String>> users = [];

  void register() {
    stdout.write('Enter email: ');
    String email = stdin.readLineSync()!;
    stdout.write('Enter password: ');
    String password = stdin.readLineSync()!;

    users.add({'email': email, 'password': password});
    print('Registration successful!');
  }

  void login() {
    stdout.write('Enter email: ');
    String email = stdin.readLineSync()!;
    stdout.write('Enter password: ');
    String password = stdin.readLineSync()!;

    bool isAuthenticated = false;
    for (var user in users) {
      if (user['email'] == email && user['password'] == password) {
        isAuthenticated = true;
        print('Login successful!');
        break;
      }
    }
    if (!isAuthenticated) {
      print('Invalid email or password!');
    }
  }

  void forgotPassword() {
    stdout.write('Enter email: ');
    String email = stdin.readLineSync()!;

    for (var user in users) {
      if (user['email'] == email) {
        stdout.write('Enter new password: ');
        String newPassword = stdin.readLineSync()!;
        user['password'] = newPassword;
        print('Password reset successful!');
        return;
      }
    }
    print('Email not found!');
  }
}

void Task3() {
  LoginSystem loginSystem = LoginSystem();

  while (true) {
    print('Menu:');
    print('1. Register');
    print('2. Login');
    print('3. Forgot Password');
    print('4. Exit');
    stdout.write('Enter your choice: ');
    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        loginSystem.register();
        break;
      case '2':
        loginSystem.login();
        break;
      case '3':
        loginSystem.forgotPassword();
        break;
      case '4':
        print('Exiting...');
        return;
      default:
        print('Invalid choice! Please enter a number between 1 and 4.');
    }
  }
}
class Person {
  String name = '';
  int age = 0;
  String address = '';

  void displayInfo() {
    print('Name: $name');
    print('Age: $age');
    print('Address: $address');
  }
}

void Task4() {
  Person person = Person()
    ..name = 'Moksh'
    ..age = 18
    ..address = '123 Main Street';

  person.displayInfo();
}
