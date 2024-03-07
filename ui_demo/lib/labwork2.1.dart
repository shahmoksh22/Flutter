import 'dart:io';

void main() {
  bool exit = false;

  while (!exit) {
    print("Choose an option:");
    print("1. Addition of two different numbers");
    print("2. Multiplication of two user given numbers");
    print("3. Print multiplication table of a user given number");
    print("4. Generate multiplication tables between two provided values");
    print("5. Find the cube of any number");
    print("6. Print full name by getting first name and last name");
    print("7. Find Simple Interest");
    print("8. Check if a number is even or odd");
    print("0. Exit");

    int option = int.parse(stdin.readLineSync()!);

    switch (option) {
      case 1:
        performAddition();
        break;
      case 2:
        performMultiplication();
        break;
      case 3:
        printMultiplicationTable();
        break;
      case 4:
        generateMultiplicationTables();
        break;
      case 5:
        findCube();
        break;
      case 6:
        printFullName();
        break;
      case 7:
        findSimpleInterest();
        break;
      case 8:
        checkEvenOrOdd();
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

void performAddition() {
  double num1 = 5;
  double num2 = 7;
  double sum = num1 + num2;
  print("The sum of $num1 and $num2 is: $sum");
}

void performMultiplication() {
  print("Enter the first number:");
  double num1 = double.parse(stdin.readLineSync()!);
  print("Enter the second number:");
  double num2 = double.parse(stdin.readLineSync()!);
  double result = num1 * num2;
  print("The multiplication of $num1 and $num2 is: $result");
}

void printMultiplicationTable() {
  print("Enter a number to print its multiplication table:");
  int number = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= 10; i++) {
    print("$number x $i = ${number * i}");
  }
}

void generateMultiplicationTables() {
  int n1 = 2;
  int n2 = 5;

  for (int i = n1; i <= n2; i++) {
    print("Multiplication table of $i:");
    for (int j = 1; j <= 10; j++) {
      print("$i x $j = ${i * j}");
    }
    print("");
  }
}

void findCube() {
  print("Enter a number to find its cube:");
  double number = double.parse(stdin.readLineSync()!);
  double cube = number * number * number;
  print("The cube of $number is: $cube");
}

void printFullName() {
  print("Enter your first name:");
  String firstName = stdin.readLineSync()!;
  print("Enter your last name:");
  String lastName = stdin.readLineSync()!;
  print("Your full name is: $firstName $lastName");
}

void findSimpleInterest() {
  double principle = 1000;
  double rate = 5;
  double time = 2;

  double simpleInterest = (principle * rate * time) / 100;
  print("Simple Interest: $simpleInterest");
}

void checkEvenOrOdd() {
  print("Enter a number to check if it's even or odd:");
  int number = int.parse(stdin.readLineSync()!);
  if (number % 2 == 0) {
    print("$number is even");
  } else {
    print("$number is odd");
  }
}
