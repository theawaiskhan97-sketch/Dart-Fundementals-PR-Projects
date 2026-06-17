import 'dart:io';

/// Temperature Converter Program
/// This program converts temperatures between Celsius and Fahrenheit scales
/// based on the conversion path chosen by the user.

void main() {
  // Display configuration menu
  print("=== Temperature Converter ===");
  print('1. Celsius to Fahrenheit');
  print('2. Fahrenheit to Celsius');
  stdout.write("Choose an option (1 or 2): ");

  String? choice = stdin.readLineSync();

  if (choice == '1') {
    // Celsius to Fahrenheit conversion
    stdout.write("Enter temperature in Celsius: ");
    String? input = stdin.readLineSync();
    if (input == null) {
      print("No input provided.");
      return;
    }
    double celsius = double.parse(input);
    
    // Conversion Formula: (Celsius * 9/5) + 32
    double fahrenheit = (celsius * 9 / 5) + 32;
    print('$celsius °C = $fahrenheit °F');
  } else if (choice == '2') {
    // Fahrenheit to Celsius conversion
    stdout.write("Enter temperature in Fahrenheit: ");
    String? input = stdin.readLineSync();
    if (input == null) {
      print("No input provided.");
      return;
    }
    double fahrenheit = double.parse(input);
    
    // Conversion Formula: (Fahrenheit - 32) * 5/9
    double celsius = (fahrenheit - 32) * 5 / 9;
    print('$fahrenheit °F = $celsius °C');
  } else {
    // Handle options other than '1' or '2'
    print('Invalid choice! Please enter 1 or 2.');
  }
}
