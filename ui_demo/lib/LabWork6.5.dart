void main() {
 main1();
 main2();
 main3();
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

