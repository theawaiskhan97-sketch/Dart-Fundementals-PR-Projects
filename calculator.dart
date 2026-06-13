import 'dart:io';

void main() {
  int choice;
  double num1;
  double num2;

  print("Enter First Number:");
  num1 = double.parse(stdin.readLineSync()!);
  print("Enter Second Number:");
  num2 = double.parse(stdin.readLineSync()!);

  print("\nEnter operation to perform");
  print("1. Addition");
  print("2. Subtraction");
  print("3. Division");
  print("4. Multiplication");
  choice = int.parse(stdin.readLineSync()!);

  if (choice == 1) {
    double addition = num1 + num2;
    print("Result: $addition");
  } else if (choice == 2) {
    double subtraction = num1 - num2;
    print("Result: $subtraction");
  } else if (choice == 3) {
    if (num2 == 0) {
      print("Invalid! Cannot divide by 0");
    } else {
      double division = num1 / num2;
      print("Result: $division");
    }
  } else if (choice == 4) {
    double multiplication = num1 * num2;
    print("Result: $multiplication");
  } else {
    print("Invalid Option!");
  }
}
