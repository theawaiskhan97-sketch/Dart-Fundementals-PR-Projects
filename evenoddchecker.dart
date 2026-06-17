import 'dart:io';

/// Even/Odd Number Checker
/// This program prompts the user to enter an integer, validates if the input is a
/// valid number, and determines if that number is even or odd using the modulo operator.

void main() {
  // Prompt the user for a number
  print("Enter a Number to Check:");
  
  // Read line from stdin and attempt to parse it as an integer.
  // Using tryParse to avoid throwing a format exception on invalid input.
  int? number = int.tryParse(stdin.readLineSync()!);

  // Check if the input could not be parsed as an integer
  if (number == null) {
    print("Invalid number.");
    return;
  }

  // Use the modulo operator (%) to check if the number is divisible by 2
  if (number % 2 == 0) {
    print("Number is even.");
  } else {
    print("Number is odd.");
  }
}
