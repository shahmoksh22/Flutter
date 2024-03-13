import 'dart:io';

void main() {
  bool exit = false;

  while (!exit) {
    print("Choose an option:");
    print("1. A cube of given number.");
    print("2. unique list of names by passing a list of names to that function.");
    print("3. simple calculator functionality by creating various different functions with switch case.");
    print("4. accepts marks of 3 to 5 occupations and returns a percentage of success to gain a new job as a software developer (using optional parameters).");
    print("5. The use of positional parameters by creating a function which returns the sum of passed parameters.");
    print("6. Modify Text Widget And give required property to it and create custom Widget");
    print("0. Exit");

    int option = int.parse(stdin.readLineSync()!);

    switch (option) {
      case 1:
        findCube();
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
      case 5:
        Task5();
        break;
      case 6:

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
findCube() {
  print("Enter a number to find its cube:");
  double number = double.parse(stdin.readLineSync()!);
  double cube = number * number * number;
  print("The cube of $number is: $cube");
  return cube;
}
Task2(){
  List<String> uniqueNames(List<String> names) => names.toSet().toList();

    List<String> names = ['John', 'Alice', 'Bob', 'Alice', 'John', 'Carol'];
    List<String> unique = uniqueNames(names);
    print('Original List: $names');
    print('Unique List: $unique');
}
Task3(){
  print("Simple Calculator");

  double? result;
  bool exit = false;

  while (!exit) {
    print("Enter the first number:");
    double? num1 = double.parse(stdin.readLineSync()!);

    if (num1 != null) {


      print("Enter the second number:");
      var input = stdin.readLineSync();
      var num2 = double.tryParse(input!);

      if (num2 != null) {
        print("Choose operation:");
        print("1. Addition");
        print("2. Subtraction");
        print("3. Multiplication");
        print("4. Division");
        print("0. Exit");

        var choice = int.parse(stdin.readLineSync()!);
        if(choice==0){
          exit = true;
          break;
        }

        if (choice != null && choice >= 1 && choice <= 4 ) {
          switch (choice) {
            case 1:
              result = add(num1, num2);
              break;
            case 2:
              result = subtract(num1, num2);
              break;
            case 3:
              result = multiply(num1, num2);
              break;
            case 4:
              result = divide(num1, num2);
              break;
            case 0:
              exit = true;
              print("Exiting program...");
              break;
            default:
              print("Invalid option");
          }
          print("Result: $result");
        } else {
          print("Invalid choice. Please choose a number between 1 and 4.");
        }
      } else {
        print("Invalid input. Please enter a valid number.");
      }
    } else {
      print("Invalid input. Please enter a valid number.");
    }
  }
}

double add(double num1, double num2) {
  return num1 + num2;
}

double subtract(double num1, double num2) {
  return num1 - num2;
}

double multiply(double num1, double num2) {
  return num1 * num2;
}

double divide(double num1, double num2) {
  if (num2 != 0) {
    return num1 / num2;
  } else {
    print("Error: Cannot divide by zero.");
    return double.nan;
  }
}
double calculateSuccessPercentage(int occupation1, int occupation2, int occupation3, int occupation4, int occupation5) {
  // Assuming marks range from 0 to 100
  int totalMarks = occupation1 + occupation2;

  // Check if optional parameters are provided and add their marks
  int totalOccupations = 2;
  if (occupation3 != null) {
    totalMarks += occupation3;
    totalOccupations++;
  }
  if (occupation4 != null) {
    totalMarks += occupation4;
    totalOccupations++;
  }
  if (occupation5 != null) {
    totalMarks += occupation5;
    totalOccupations++;
  }

  // Calculate average marks and convert to percentage
  double averageMarks = totalMarks / totalOccupations;
  double successPercentage = (averageMarks / 100) * 100;

  return successPercentage;
}

Task4() {
  int occupation1Marks = 80;
  int occupation2Marks = 75;
  int occupation3Marks = 85;

  double successPercentage = calculateSuccessPercentage(occupation1Marks, occupation2Marks, occupation3Marks,0,0);

  print('Success Percentage to gain a new job as a software developer: $successPercentage%');
}
int sumOfParameters(int a, int b, [int c = 0, int d = 0, int e = 0]) {
  return a + b + c + d + e;
}

Task5() {
  int sum1 = sumOfParameters(5, 10);
  int sum2 = sumOfParameters(2, 3, 4);
  int sum3 = sumOfParameters(1, 2, 3, 4, 5);

  print('Sum 1: $sum1');
  print('Sum 2: $sum2');
  print('Sum 3: $sum3');
}
