import 'dart:io';

int sumOfList({List<int>? numbers}) {
  int sum = 0;
  for (int number in numbers!) {
    sum += number;
  }
  return sum;
}

void main() {
  print("Enter numbers one by one. Enter 'done' when finished:");

  List<int> myList = [];
  String? input;
  do {
    input = stdin.readLineSync();
    if (input != 'done') {
      myList.add(int.parse(input!));
    }
  } while (input != 'done');

  int result = sumOfList(numbers: myList);
  print("Sum of the list: $result");
}
