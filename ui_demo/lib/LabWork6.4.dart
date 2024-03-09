import 'dart:io';

class Student {
  final int Rollno;
  final String StudentName;
  const Student(this.Rollno, this.StudentName);
  factory Student.fromJson(Map<String, dynamic> json) {
    return Student(
      json['rollNo'] as int,
      json['name'] as String,
    );
  }
}

class Product {
  final String name;
  final double price; // Changed from int to double
  const Product(this.name, this.price);
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      json['name'] as String,
      json['price'] as double, // Changed from int to double
    );
  }
}
void main() {
  bool exit = false;

  while (!exit) {
    print("Choose an option:");
    print("1. Display 30 Students Data with Roll no and name and Course with Factory Constructor.");
    print("2. Create Ecommerce product List<Map> and convert into List of Model and print all data Price descending ordered (Minimum 20 product). ");
    print("Create a program to online food delivery. \n- Create food item list using a map (minimum - 20 product) \n- Convert list map to list of model. \n- And show data like menu driven system\na. Ascending order\nb. Descending order\nc. Filter data between two price Like  user enter ( 200 to 600 ) show in between product");
    print("0. Exit");

    int option = int.parse(stdin.readLineSync()!);

    switch (option) {
      case 1:
        StudentsFunction();
        break;
      case 2:
        Ecommerce();
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

StudentsFunction() {
  List<Map<String, dynamic>> studentData = [
    {"rollNo": 1, "name": "Moksh"},
    {"rollNo": 2, "name": "Heer"},
    {"rollNo": 3, "name": "Tirth"}
  ];
  List<Student> students = studentData.map((data) => Student.fromJson(data)).toList();
  for (var student in students) {
    print("Roll No: ${student.Rollno}, Name: ${student.StudentName}");
  }
}

Ecommerce() {
  List<Map<String, dynamic>> productListData = [
    {"name": "Laptop", "price": 1200.0},
    {"name": "T-shirt", "price": 20.0},
    {"name": "Headphones", "price": 100.0},
    {"name": "Smartphone", "price": 800.0},


  ];

  List<Product> products = productListData.map((data) => Product(
    data['name'] as String,
    data['price'] as double, // Changed from int to double
  )).toList();

  products.sort((a, b) => b.price.compareTo(a.price));

  for (var product in products.take(20)) {
    print("Name: ${product.name}, Price: ${product.price.toStringAsFixed(2)}"); // Cast price to String and format it
  }
}


class FoodItem {
  final String name;
  final double price;

  FoodItem({required this.name, required this.price});
}

main3() {
  // Create food item list using a map
  final foodItemMap = {
    'Burger': 150.0,
    'Pizza': 300.0,
    'Fries': 100.0,
    'Salad': 200.0,
    'Sandwich': 180.0,
    'Pasta': 250.0,
    'Sushi': 350.0,
    'Steak': 500.0,
    'Soup': 120.0,
    'Chicken Wings': 180.0,
    'Tacos': 220.0,
    'Rice Bowl': 180.0,
    'Nachos': 200.0,
    'Burrito': 280.0,
    'Soda': 50.0,
    'Juice': 80.0,
    'Smoothie': 120.0,
    'Ice Cream': 150.0,
    'Cake': 180.0,
    'Coffee': 100.0,
  };

  // Convert list map to list of model
  List<FoodItem> foodItemList = foodItemMap.entries
      .map((entry) => FoodItem(name: entry.key, price: entry.value))
      .toList();

  // Show data like menu driven system
  print('Menu Driven System:');
  print('1. Ascending order');
  print('2. Descending order');
  print('3. Filter data between two prices');
  print('Enter your choice: ');
  int choice = int.parse(stdin.readLineSync()!);

  switch (choice) {
    case 1:
      foodItemList.sort((a, b) => a.price.compareTo(b.price));
      print('Ascending order:');
      printFoodItems(foodItemList);
      break;
    case 2:
      foodItemList.sort((a, b) => b.price.compareTo(a.price));
      print('Descending order:');
      printFoodItems(foodItemList);
      break;
    case 3:
      print('Enter minimum price:');
      double minPrice = double.parse(stdin.readLineSync()!);
      print('Enter maximum price:');
      double maxPrice = double.parse(stdin.readLineSync()!);
      List<FoodItem> filteredList = foodItemList
          .where((foodItem) =>
      foodItem.price >= minPrice && foodItem.price <= maxPrice)
          .toList();
      print('Filtered data between $minPrice and $maxPrice:');
      printFoodItems(filteredList);
      break;
    default:
      print('Invalid choice');
  }
}

void printFoodItems(List<FoodItem> foodItems) {
  for (var foodItem in foodItems) {
    print('${foodItem.name}: \$${foodItem.price}');
  }
}
