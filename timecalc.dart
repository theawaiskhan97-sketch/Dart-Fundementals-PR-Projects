import 'dart:io';

/// Time Units Converter
/// This program takes a duration in hours and converts it into minutes,
/// seconds, and days, then prints the converted values.

void main() {
  // Prompt the user to enter the number of hours
  print('Enter number of hours:');

  String? input = stdin.readLineSync();
  // Attempt to parse the input into a double
  double? hours = double.tryParse(input!);

  // Guard against non-numeric inputs
  if (hours == null) {
    print('Please enter a valid number.');
    return;
  }

  // Calculate equivalent duration in minutes, seconds, and days:
  // 1 hour = 60 minutes
  double minutes = hours * 60;
  // 1 hour = 3600 seconds (60 * 60)
  double seconds = hours * 3600;
  // 1 day = 24 hours
  double days = hours / 24;

  // Print results
  print('$hours hour(s) = $minutes minute(s)');
  print('$hours hour(s) = $seconds second(s)');
  print('$hours hour(s) = $days day(s)');
}
