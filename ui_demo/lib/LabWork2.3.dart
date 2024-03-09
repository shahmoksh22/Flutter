import 'dart:io';

void main() {
  bool exit = false;

  while (!exit) {
    print("Choose an option:");
    print("1. Write a Dart program to set an integer 1D array in Ascending order.");
    print("2. Write a Dart program to find the second large element from an integer 1D array.");
    print("3. Write a Dart program to left rotate an integer 1D array as per user choice.");
    print("0. Exit");

    int option = int.parse(stdin.readLineSync()!);

    switch (option) {
      case 1:
      arrayinAscendingorder();
        break;
      case 2:
        findthesecondlargeelement();
        break;
      case 3:
        leftrotateaninteger();
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

leftrotateaninteger() {
  List<int> arr = [6, 3, 8, 5, 2, 9];
  int rotateNumber = 2;
  List<int> rotatedArray = leftRotate(arr, rotateNumber);
  print("Initial Array = $arr");
  print("Rotate number = $rotateNumber");
  print("Final Array = $rotatedArray");


}

findthesecondlargeelement() {
  List<int> arr = [5, 2, 8, 1, 3];
  arr.sort();
  print("Second largest element: ${arr[arr.length - 2]}");
}

arrayinAscendingorder() {
  List<int> arr = [5, 2, 8, 1, 3];
  arr.sort();
  print("Array in ascending order: $arr");
}
List<int> leftRotate(List<int> arr, int rotateNumber) {
  List<int> rotatedArray = List<int>.filled(arr.length, 0);
  for (int i = 0; i < arr.length; i++) {
    rotatedArray[(i - rotateNumber + arr.length) % arr.length] = arr[i];
  }
  return rotatedArray;
}