import 'dart:io';
void main() {
  bool exit = false;

  while (!exit) {
    print("Choose an option:");
    print("1. Print total employees' information using user input and Map data structure (using MapEntry class)");
    print("2. Elements may run into each other while entering into a List. User can only enter elements of String datatype.");
    print("0. Exit");

    int option = int.parse(stdin.readLineSync()!);

    switch (option) {
      case 1:
        main2();
        break;
      case 2:
        main3();
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
void main2() {
  // Prompting user to input total number of employees
  print("Enter total number of employees:");
  int totalEmployees = int.parse(stdin.readLineSync()!);

  // Map to store employee information
  Map<String, MapEntry<int, double>> employees = {};

  // Taking input for each employee's information
  for (int i = 0; i < totalEmployees; i++) {
    print("\nEnter details for employee ${i + 1}:");
    print("Name:");
    String name = stdin.readLineSync()!;
    print("Age:");
    int age = int.parse(stdin.readLineSync()!);
    print("Salary:");
    double salary = double.parse(stdin.readLineSync()!);

    // Storing employee information in the map
    employees[name] = MapEntry(age, salary);
  }

  // Printing employee information
  print("\nEmployee Information:");
  employees.forEach((name, info) {
    print("Name: $name, Age: ${info.key}, Salary: ${info.value}");
  });
}



void main3() {
  List<String> elementsList = [];

  // Taking input from the user until they enter "done"
  while (true) {
    print("Enter an element (type 'done' to stop):");
    String input = stdin.readLineSync()!;
    if (input.toLowerCase() == 'done') break;
    elementsList.add(input);
  }

  // Removing duplicates by converting to a Set and then back to a List
  List<String> uniqueElements = elementsList.toSet().toList();

  // Printing unique elements
  print("\nUnique elements in the list:");
  uniqueElements.forEach((element) {
    print(element);
  });
}
