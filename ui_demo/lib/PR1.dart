import 'Dart:io';

void main() {
  bool exit = false;

  while (!exit) {
    print("Choose an option:");
    print("1. PRINT ALL NEGATIVE ELEMENTS FROM ARRAY.");
    print("2. PRINT largest number FROM ARRAY.");
    print("3. Dart program to Insert, Delete, Update and View operations on the elements in an array using menu-driven programming approach.");
    print("4. Addition of two matrices of dimension 3x3.");
    print("5. Operations on the 3x3.");
    print("0. Exit");
    print("Made By Shahmoksh22");

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
      case 5:
        Task5();
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
void Task1() {
  List<int> numbers = [1, -2, 3, -4, 5, -6, 7, -8, 9, -10];

  // Using a for loop
  print('Negative elements (using for loop):');
  for (int number in numbers) {
    if (number < 0) {
      print(number);
    }
  }
}

void Task2() {
  List<int> numbers = [10, 5, 20, 15, 25, 30, 5, 15];

  // Using a loop to find the largest number
  int largest = numbers[0]; // Assume the first element is the largest initially
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }
  print('Largest number in the array: $largest');

  // Using reduce method
  int maxNumber = numbers.reduce((value, element) => value > element ? value : element);
  print('Largest number using reduce method: $maxNumber');
}

class ArrayOperations {
  List<int> array = [];

  void insertElement(int element) {
    array.add(element);
    print('Element $element inserted successfully.');
  }

  void deleteElement(int element) {
    if (array.contains(element)) {
      array.remove(element);
      print('Element $element deleted successfully.');
    } else {
      print('Element $element not found in the array.');
    }
  }

  void updateElement(int index, int newValue) {
    if (index >= 0 && index < array.length) {
      array[index] = newValue;
      print('Element at index $index updated to $newValue successfully.');
    } else {
      print('Invalid index: $index');
    }
  }

  void viewElements() {
    if (array.isEmpty) {
      print('Array is empty.');
    } else {
      print('Elements in the array:');
      print(array);
    }
  }
}

void Task3() {
  ArrayOperations arrayOperations = ArrayOperations();

  while (true) {
    print('\nMenu:');
    print('1. Insert Element');
    print('2. Delete Element');
    print('3. Update Element');
    print('4. View Elements');
    print('5. Exit');

    stdout.write('Enter your choice: ');
    String choice = stdin.readLineSync()!;
    switch (choice) {
      case '1':
        stdout.write('Enter element to insert: ');
        int element = int.parse(stdin.readLineSync()!);
        arrayOperations.insertElement(element);
        break;
      case '2':
        stdout.write('Enter element to delete: ');
        int element = int.parse(stdin.readLineSync()!);
        arrayOperations.deleteElement(element);
        break;
      case '3':
        stdout.write('Enter index to update: ');
        int index = int.parse(stdin.readLineSync()!);
        stdout.write('Enter new value: ');
        int newValue = int.parse(stdin.readLineSync()!);
        arrayOperations.updateElement(index, newValue);
        break;
      case '4':
        arrayOperations.viewElements();
        break;
      case '5':
        print('Exiting...');
        return;
      default:
        print('Invalid choice! Please enter a number between 1 and 5.');
    }
  }
}

List<List<int>> addMatrices(List<List<int>> matrix1, List<List<int>> matrix2) {
  List<List<int>> result = List.generate(3, (_) => List.filled(3, 0));

  for (int i = 0; i < 3; i++) {
    for (int j = 0; j < 3; j++) {
      result[i][j] = matrix1[i][j] + matrix2[i][j];
    }
  }

  return result;
}

void Task4() {
  List<List<int>> matrix1 = [];
  List<List<int>> matrix2 = [];

  print('Enter elements of matrix1 (3x3):');
  for (int i = 0; i < 3; i++) {
    stdout.write('Row ${i + 1}: ');
    matrix1.add(stdin.readLineSync()!.split(' ').map(int.parse).toList());
  }

  print('Enter elements of matrix2 (3x3):');
  for (int i = 0; i < 3; i++) {
    stdout.write('Row ${i + 1}: ');
    matrix2.add(stdin.readLineSync()!.split(' ').map(int.parse).toList());
  }

  List<List<int>> result = addMatrices(matrix1, matrix2);

  print('Resultant matrix after addition:');
  for (int i = 0; i < 3; i++) {
    print(result[i]);
  }
}

class ArrayOperations2 {
  List<List<int>> array = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9]
  ];

  void displayMenu() {
    print('\nMenu:');
    print('1. Sum of all elements');
    print('2. Sum of specific row');
    print('3. Sum of specific column');
    print('4. Sum of diagonal elements');
    print('5. Sum of antidiagonal elements');
    print('6. Exit');
  }

  int sumOfAllElements() {
    int sum = 0;
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        sum += array[i][j];
      }
    }
    return sum;
  }

  int sumOfRow(int row) {
    int sum = 0;
    for (int j = 0; j < 3; j++) {
      sum += array[row][j];
    }
    return sum;
  }

  int sumOfColumn(int col) {
    int sum = 0;
    for (int i = 0; i < 3; i++) {
      sum += array[i][col];
    }
    return sum;
  }

  int sumOfDiagonal() {
    int sum = 0;
    for (int i = 0; i < 3; i++) {
      sum += array[i][i];
    }
    return sum;
  }

  int sumOfAntiDiagonal() {
    int sum = 0;
    for (int i = 0; i < 3; i++) {
      sum += array[i][2 - i];
    }
    return sum;
  }
}

Task5() {
  ArrayOperations2 arrayOperations = ArrayOperations2();

  while (true) {
    arrayOperations.displayMenu();

    stdout.write('Enter your choice: ');
    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        print('Sum of all elements: ${arrayOperations.sumOfAllElements()}');
        break;
      case '2':
        stdout.write('Enter row number (0-2): ');
        int row = int.parse(stdin.readLineSync()!);
        print('Sum of row $row: ${arrayOperations.sumOfRow(row)}');
        break;
      case '3':
        stdout.write('Enter column number (0-2): ');
        int col = int.parse(stdin.readLineSync()!);
        print('Sum of column $col: ${arrayOperations.sumOfColumn(col)}');
        break;
      case '4':
        print('Sum of diagonal elements: ${arrayOperations.sumOfDiagonal()}');
        break;
      case '5':
        print('Sum of antidiagonal elements: ${arrayOperations.sumOfAntiDiagonal()}');
        break;
      case '6':
        print('Exiting...');
        return;
      default:
        print('Invalid choice! Please enter a number between 1 and 6.');
    }
  }
}

