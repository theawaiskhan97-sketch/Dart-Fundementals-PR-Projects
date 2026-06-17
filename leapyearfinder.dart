import 'dart:io'; // Import standard I/O library to read/write to the console

void main() {
  int year; // Variable to store the input year

  stdout.write("Enter a year: "); // Prompt the user without creating a new line
  
  // Read terminal input as a string and convert (parse) it to an integer
  year = int.parse(stdin.readLineSync()!);

  // Leap year formula: divisible by 4 and not 100, OR divisible by 400
  if ((year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)) {
    print("$year is a Leap Year ✅");
  } else {
    print("$year is NOT a Leap Year ❌");
  }
}

