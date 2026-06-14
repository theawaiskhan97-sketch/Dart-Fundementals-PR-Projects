import 'dart:io';

// Function that checks if the birth year is valid
bool isValidYear(int birthYear) {
  int currentYear = 2026;
  if (birthYear < 1900 || birthYear > currentYear) {
    return false; // invalid year
  }
  return true; // valid year
}

// Function that checks if person is adult or not
bool isAdult(int age) {
  if (age >= 18) {
    return true;
  }
  return false;
}

void main() {
  print('===== Age Calculator =====');

  stdout.write('Enter your birth year: ');
  int birthYear = int.parse(stdin.readLineSync()!);

  // Using bool — store the result of isValidYear()
  bool validYear = isValidYear(birthYear);

  if (validYear == false) {
    print('Invalid birth year! Please enter a year between 1900 and 2026.');
  } else {
    int currentYear = 2026;
    int age = currentYear - birthYear;

    print('Your age is: $age years old');

    // Using bool — store the result of isAdult()
    bool adult = isAdult(age);

    if (adult == true) {
      print('You are an ADULT.');
    } else {
      print('You are NOT an adult yet.');
    }

    // Bool directly in condition
    bool isSenior = age >= 60;
    if (isSenior) {
      print('You are also a Senior Citizen.');
    }

    // Bool with String interpolation
    print('Adult status: $adult');
    print('Senior status: $isSenior');
  }
}
