import 'dart:io';

class Student {
  String name;
  int rollNumber;
  String grade;

  Student(this.name, this.rollNumber, this.grade);

  void printDetails() {
    print('Name: $name');
    print('Roll Number: $rollNumber');
    print('Grade: $grade');
  }
}

void Task1() {
  print('Enter the number of students:');
  int n = int.parse(stdin.readLineSync()!);

  List<Student> students = [];

  for (int i = 0; i < n; i++) {
    print('\nEnter details for student ${i + 1}:');
    print('Enter name:');
    String name = stdin.readLineSync()!;
    print('Enter roll number:');
    int rollNumber = int.parse(stdin.readLineSync()!);
    print('Enter grade:');
    String grade = stdin.readLineSync()!;

    students.add(Student(name, rollNumber, grade));
  }

  print('\nDetails of students:');
  for (int i = 0; i < students.length; i++) {
    print('\nDetails of student ${i + 1}:');
    students[i].printDetails();
  }
}
