import 'dart:async';
import 'dart:io';

void main() {
  bool exit = false;

  while (!exit) {
    print('Choose a task to execute:');
    print('1. Print numbers from 1 to N with a 1-second gap');
    print('2. Simulate a clock by continuously printing the time');
    print('3. Run a Flutter-like app for counter increment by pressing start');
    print('4. Exit');

    String userInput = stdin.readLineSync() ?? '';
    int choice = int.tryParse(userInput) ?? 0;

    switch (choice) {
      case 1:
        print('Enter the value of N:');
        int n = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
        printNumbers(n);
        break;
      case 2:

        break;
      case 3:

        break;
      case 4:
        exit = true;
        print('Exiting...');
        break;
      default:
        print('Invalid choice. Please enter a valid option.');
        break;
    }
  }
}

// Task 1: Print 1 to N number in 1 second gap
void printNumbers(int n) {
  for (int i = 1; i <= n; i++) {
    print(i);
    sleep(Duration(seconds: 1));
  }
}

