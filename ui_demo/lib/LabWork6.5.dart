
import 'dart:io';

void main() {
  bool exit = false;

  while (!exit) {
    print("Choose an option:");
    print("1. WAP using FormatException example.");
    print("2. WAP using final block.");
    print("3. WAP Using try-catch block.");
    print("0. Exit");

    int option = int.parse(stdin.readLineSync()!);

    switch (option) {
      case 1:
        main1();
        break;
      case 2:
        main2();
        break;
      case 3:
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

main1(){
  try {
    String amount = 'abc';
    double parsedAmount = double.parse(amount);
    print('Parsed amount: $parsedAmount');
  } on FormatException catch (e) {
    print('Error: $e');
  }
}
main2() {
  try {
    int result = 12 ~/ 0; // Attempt to divide by zero
    print('Result: $result');
  } catch (e) {
    print('Error: $e');
  } finally {
    print('This block always executes, regardless of exceptions.');
  }
}
main3(){
    try {
      String userInput = '5'; // Change to a non-integer value to see the exception
      int parsedValue = int.parse(userInput);
      print('Parsed value: $parsedValue');
    } catch (e) {
      print('Error: $e');
    }


}

