import 'dart:io'; // Import library for console input/output operations

/// Multiplication Table Generator
/// This program prompts the user to enter an integer, then generates and
/// prints the multiplication table for that number from 1 to 20.

void main() {
  print("Multiplication Table:");
  stdout.write("Enter a number: "); // Prompt the user without a newline
  
  String? input = stdin.readLineSync(); // Read user input from the console
  int number = int.parse(input!); // Convert the string input to an integer
  
  print("Table of: $number");
  
  // Loop from 1 to 20 to generate and print the multiplication table
  for (int i = 1; i <= 20; i++) {
    int result = number * i; // Calculate the product for the current iteration
    print("$number * $i = $result "); // Print the equation in standard formatting
  }
}
