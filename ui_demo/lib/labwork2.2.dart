import 'dart:io';

void main() {
  bool exit = false;

  while (!exit) {
    print("Choose an option:");
    print("1. Concatenate list elements with 'hello'");
    print("2. Add Indian states");
    print("0. Exit");

    int option = int.parse(stdin.readLineSync()!);

    switch (option) {
      case 1:
        concatenateListElements();
        break;
      case 2:
        addIndianStates();
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

void concatenateListElements() {
  List<int> numbers = [1, 2, 3];
  List<String> concatenatedList = [];

  for (int number in numbers) {
    concatenatedList.add('$number hello');
  }

  print("Output: $concatenatedList");

}

void addIndianStates() {
  List<String> indianStates = [];

  print("Enter Indian states (enter 'exit' to finish):");
  while (true) {
    String state = stdin.readLineSync()!;
    if (state.toLowerCase() == 'exit') {
      break;
    }
    indianStates.add(state);
  }

  print("Indian States:");
  for (var state in indianStates) {
    print(state);
  }
}
