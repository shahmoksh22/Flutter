import 'dart:io';

class Student {
  String? name;
  int? rollNumber;

  void getDetails() {
    print("Enter name:");
    name = stdin.readLineSync()!;
    print("Enter roll number:");
    rollNumber = int.parse(stdin.readLineSync()!);
  }

  void printDetails() {
    print("Name: $name");
    print("Roll Number: $rollNumber");
  }
}

class Employee {
  String? name;
  double? salary;
  String? designation;

  void getDetails() {
    print("Enter name:");
    name = stdin.readLineSync()!;
    print("Enter salary:");
    salary = double.parse(stdin.readLineSync()!);
    print("Enter designation:");
    designation = stdin.readLineSync()!;
  }

  void printDetails() {
    print("Name: $name, Salary: $salary, Designation: $designation");
  }
}

class Train {
  int? trainNumber;
  String? trainName;
  String? source;
  String? destination;
  String? trainTime;

  void getDetails() {
    print("Enter Train Number:");
    trainNumber = int.parse(stdin.readLineSync()!);
    print("Enter Train Name:");
    trainName = stdin.readLineSync()!;
    print("Enter Source:");
    source = stdin.readLineSync()!;
    print("Enter Destination:");
    destination = stdin.readLineSync()!;
    print("Enter Train Time:");
    trainTime = stdin.readLineSync()!;
  }

  void printDetails() {
    print("Train Number: $trainNumber");
    print("Train Name: $trainName");
    print("Source: $source");
    print("Destination: $destination");
    print("Train Time: $trainTime");
  }
}

class Item {
  int? itemNumber;
  String? itemName;
  int? quantity;
  double? tax;
  double? discount;

  void getDetails() {
    print("Enter Item Number:");
    itemNumber = int.parse(stdin.readLineSync()!);
    print("Enter Item Name:");
    itemName = stdin.readLineSync()!;
    print("Enter Quantity:");
    quantity = int.parse(stdin.readLineSync()!);
    print("Enter Tax:");
    tax = double.parse(stdin.readLineSync()!);
    print("Enter Discount:");
    discount = double.parse(stdin.readLineSync()!);
  }

  void printDetails() {
    print("Item Number: $itemNumber");
    print("Item Name: $itemName");
    print("Quantity: $quantity");
    print("Tax: $tax");
    print("Discount: $discount");
  }
}

void main() {
  bool exit = false;

  while (!exit) {
    print("\nChoose an option:");
    print("1. Student Details");
    print("2. Employee Data");
    print("3. Railway Reservation System");
    print("4. Supermarket Billing System");
    print("0. Exit");

    int option = int.parse(stdin.readLineSync()!);

    switch (option) {
      case 1:
        print("Enter the number of students:");
        int n = int.parse(stdin.readLineSync()!);
        List<Student> students = [];

        for (int i = 0; i < n; i++) {
          Student student = Student();
          student.getDetails();
          students.add(student);
        }

        print("Details of Students:");
        for (int i = 0; i < n; i++) {
          students[i].printDetails();
        }
        break;
      case 2:
        print("Enter the number of employees:");
        int n = int.parse(stdin.readLineSync()!);
        List<Employee> employees = [];

        for (int i = 0; i < n; i++) {
          Employee emp = Employee();
          emp.getDetails();
          employees.add(emp);
        }

        employees.sort((a, b) => (a.name ?? '').compareTo(b.name ?? ''));


        print("Employee Details in Ascending Order of Name:");
        for (var emp in employees) {
          emp.printDetails();
        }
        break;
      case 3:
        List<Train> trains = [];

        while (true) {
          print("\nRailway Reservation System");
          print("1. Add Train Record");
          print("2. Search Train by Number");
          print("3. Display All Train Records");
          print("0. Exit");

          int option = int.parse(stdin.readLineSync()!);

          switch (option) {
            case 1:
              Train train = Train();
              train.getDetails();
              trains.add(train);
              break;
            case 2:
              print("Enter Train Number to search:");
              int searchNumber = int.parse(stdin.readLineSync()!);
              bool found = false;
              for (var train in trains) {
                if (train.trainNumber == searchNumber) {
                  train.printDetails();
                  found = true;
                  break;
                }
              }
              if (!found) {
                print("Train not found with given number.");
              }
              break;
            case 3:
              print("\nAll Train Records:");
              for (var train in trains) {
                train.printDetails();
                print("--------------");
              }
              break;
            case 0:
              exit = true;
              print("Exiting program...");
              break;
            default:
              print("Invalid option");
          }
          if (exit) break;
        }
        break;
      case 4:
        const String userID = "admin";
        const String password = "admin123";

        print("Enter User ID:");
        String enteredUserID = stdin.readLineSync()!;
        print("Enter Password:");
        String enteredPassword = stdin.readLineSync()!;

        if (enteredUserID == userID && enteredPassword == password) {
          print("User Verified. Welcome to Supermarket Billing System.");

          List<Item> items = [];

          while (true) {
            print("\nSupermarket Billing System");
            print("1. Add Item");
            print("2. Display All Items (Sorted by Item Number)");
            print("0. Exit");

            int option = int.parse(stdin.readLineSync()!);

            switch (option) {
              case 1:
                Item item = Item();
                item.getDetails();
                items.add(item);
                break;
              case 2:
                print("\nAll Items (Sorted by Item Number):");
                items.sort((a, b) => (a.itemNumber ?? 0).compareTo(b.itemNumber ?? 0));

                for (var item in items) {
                  item.printDetails();
                  print("--------------");
                }
                break;
              case 0:
                exit = true;
                print("Exiting program...");
                break;
              default:
                print("Invalid option");
            }
            if (exit) break;
          }
        } else {
          print("Invalid User ID or Password. Access Denied.");
        }
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
