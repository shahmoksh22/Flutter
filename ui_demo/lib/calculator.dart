import 'dart:io';

void main() {
  bool exit = false;

  while (!exit) {
    print("Choose an operation:");
    print("1. Addition");
    print("2. Subtraction");
    print("3. Multiplication");
    print("4. Division");
    print("0. Exit");

    int choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        performOperation("+");
        break;
      case 2:
        performOperation("-");
        break;
      case 3:
        performOperation("*");
        break;
      case 4:
        performOperation("/");
        break;
      case 0:
        exit = true;
        print("Exiting calculator...");
        break;
      default:
        print("Invalid choice");
    }
  }
}

void performOperation(String operator) {
  print("Enter the first number:");
  double num1 = double.parse(stdin.readLineSync()!);
  print("Enter the second number:");
  double num2 = double.parse(stdin.readLineSync()!);

  double result;
  switch (operator) {
    case "+":
      result = num1 + num2;
      break;
    case "-":
      result = num1 - num2;
      break;
    case "*":
      result = num1 * num2;
      break;
    case "/":
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        print("Error: Division by zero");
        return;
      }
      break;
    default:
      print("Invalid operator");
      return;
  }

  print("Result: $result");
}
