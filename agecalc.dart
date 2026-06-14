import 'dart:io';

bool isValidYear(int birthYear) {
  int currentYear = 2026;
  if (birthYear < 1900 || birthYear > currentYear) {
    return false;
  }
  return true;
}

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

  bool validYear = isValidYear(birthYear);

  if (validYear == false) {
    print('Invalid birth year! Please enter a year between 1900 and 2026.');
  } else {
    int currentYear = 2026;
    int age = currentYear - birthYear;

    print('Your age is: $age years old');

    bool adult = isAdult(age);

    if (adult == true) {
      print('You are an ADULT.');
    } else {
      print('You are NOT an adult yet.');
    }

    bool isSenior = age >= 60;
    if (isSenior) {
      print('You are also a Senior Citizen.');
    }

    print('Adult status: $adult');
    print('Senior status: $isSenior');
  }
}
