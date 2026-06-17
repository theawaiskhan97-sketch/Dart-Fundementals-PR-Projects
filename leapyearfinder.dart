import 'dart:io'; // Import standard I/O library to read/write to the console

/// Leap Year Finder
/// This program prompts the user to enter a year, parses it to an integer, and
/// checks whether it is a leap year based on Gregorian calendar rules.

void main() {
  int year; // Variable to store the input year

  stdout.write("Enter a year: "); // Prompt the user without creating a new line
  
  // Read terminal input as a string and convert (parse) it to an integer
  year = int.parse(stdin.readLineSync()!);

  // Leap year algorithm rules:
  // 1. A year is a leap year if it is evenly divisible by 4.
  // 2. However, if it is also divisible by 100, it is NOT a leap year, UNLESS...
  // 3. It is also divisible by 400, in which case it IS a leap year.
  if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
    print("$year is a Leap Year ✅");
  } else {
    print("$year is NOT a Leap Year ❌");
  }
}

