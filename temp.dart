import 'dart:io';

void main() {
  print("=== Temperature Converter ===");
  print('1. Celsius to Fahrenheit');
  print('2. Fahrenheit to Celsius');
  stdout.write("Choose an option (1 or 2): ");

  String? choice = stdin.readLineSync();

  if (choice == '1') {
    stdout.write("Enter temperature in Celsius: ");
    String? input = stdin.readLineSync();
    if (input == null) {
      print("No input provided.");
      return;
    }
    double celsius = double.parse(input);
    double fahrenheit = (celsius * 9 / 5) + 32;
    print('$celsius °C = $fahrenheit °F');
  } else if (choice == '2') {
    stdout.write("Enter temperature in Fahrenheit: ");
    String? input = stdin.readLineSync();
    if (input == null) {
      print("No input provided.");
      return;
    }
    double fahrenheit = double.parse(input);
    double celsius = (fahrenheit - 32) * 5 / 9;
    print('$fahrenheit °F = $celsius °C');
  } else {
    print('Invalid choice! Please enter 1 or 2.');
  }
}
