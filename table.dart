import 'dart:io'; // Import library for console input/output operations

void main() {
  print("Multiplication Table:");
  stdout.write("Enter a number:"); // Prompt the user without a newline
  
  String? input = stdin.readLineSync(); // Read user input from the console
  int number = int.parse(input!); // Convert the string input to an integer
  
  print("table of: $number");
  
  // Loop from 1 to 20 to generate the multiplication table
  for (int i = 1; i <= 20; i++) {
    int result = number * i; // Calculate the product
    print("$number * $i = $result "); // Print the equation format
  }
}
