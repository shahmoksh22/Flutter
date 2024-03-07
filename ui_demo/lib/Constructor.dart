// Dart Program to create a constructor

// Creating Class named Moksh
class Moksh{

// Creating Constructor
  Moksh() {

    // Whenever constructor is called
    // this statement will run
    print('Constructor is being created');
  }


// Creating Field inside the class
  String? string;

// Creating Function inside class
  void Print(){
    print("Welcome to $string");
  }
}
class Gfg{

  // Creating Parameterized Constructor
  Gfg() {

    print('This is the parameterized constructor');
  }
  Gfg.constructor1(int a) {
    print('This is the parameterized constructor with only one parameter');
  }
  // Creating named and
  // parameterized Constructor
  // with two parameter
  Gfg.constructor2(int a, int b) {
    print('This is the parameterized constructor with two parameters');
    print('Value of a + b is ${a + b}');
  }
}


void main() {

// Creating Instance of class
  Moksh mokshclass = new Moksh();

// Calling field name string
// and assigning value to it
// using object of the class Moksh
  mokshclass.string = 'Moksh Code';

// Calling function name
// geek using object
// of the class Moksh
  mokshclass.Print();
//Parameterize Contructor
  Gfg geek = new Gfg();
  Gfg geek1 = new Gfg.constructor1(1);
  Gfg geek2 = new Gfg.constructor2(2, 3);
}
