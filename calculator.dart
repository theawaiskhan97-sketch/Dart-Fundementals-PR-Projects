import 'dart:io';

/// Simple Calculator Program
/// This program performs basic arithmetic operations (Addition, Subtraction, Division, Multiplication)
/// on two double-precision numbers based on the user's choice.

void main() {
  int choice;
  double num1;
  double num2;

  // Prompt the user and read the first number
  print("Enter First Number:");
  num1 = double.parse(stdin.readLineSync()!);
  
  // Prompt the user and read the second number
  print("Enter Second Number:");
  num2 = double.parse(stdin.readLineSync()!);

  // Display operation menu choices
  print("\nEnter operation to perform");
  print("1. Addition");
  print("2. Subtraction");
  print("3. Division");
  print("4. Multiplication");
  choice = int.parse(stdin.readLineSync()!);

  // Execute the selected arithmetic operation
  if (choice == 1) {
    // Perform Addition
    double addition = num1 + num2;
    print("Result: $addition");
  } else if (choice == 2) {
    // Perform Subtraction
    double subtraction = num1 - num2;
    print("Result: $subtraction");
  } else if (choice == 3) {
    // Perform Division, checking for division by zero to prevent runtime errors
    if (num2 == 0) {
      print("Invalid! Cannot divide by 0");
    } else {
      double division = num1 / num2;
      print("Result: $division");
    }
  } else if (choice == 4) {
    // Perform Multiplication
    double multiplication = num1 * num2;
    print("Result: $multiplication");
  } else {
    // Handle invalid menu options
    print("Invalid Option!");
  }
}
