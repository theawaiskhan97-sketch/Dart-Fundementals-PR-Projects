import 'dart:io';

/// Age Calculator Program
/// This program takes the user's birth year, validates it, and calculates their age.
/// It also checks if the user is an adult (>= 18 years old) or a senior citizen (>= 40 years old).

/// Checks whether the provided birth year is within a valid range.
/// A valid birth year must be between 1800 and the current year (2026).
bool validyear(int birthyear) {
  int currentyear = 2026;
  // Birth year must not be before 1800 or in the future
  if (birthyear < 1800 || birthyear > currentyear) {
    return false;
  }
  return true;
}

/// Checks if a person is considered an adult based on their age.
/// Returns true if the age is 18 or above, otherwise false.
bool isadult(int age) {
  if (age >= 18) {
    return true;
  }
  return false;
}

void main() {
  print("----Age Calculator----");
  
  // Prompt the user to enter their birth year
  stdout.write("Enter your Birth Year: ");
  int birthyear = int.parse(stdin.readLineSync()!);
  
  // Validate the birth year using the validyear function
  bool isValidyear = validyear(birthyear);
  int age = 0;
  
  if (isValidyear == false) {
    // Notify the user if the input year is outside the acceptable range
    print("Invalid Birth year! Enter Birth year between 1990 to 2026");
  } else {
    // Calculate and print the age based on the current year (2026)
    int currentyear = 2026;
    age = currentyear - birthyear;
    print("Your Age is: $age years old");
  }
  
  // Determine if the person is an adult
  bool adult = isadult(age);
  if (adult == true) {
    print("You are an Adult");
  } else {
    print("You are not an Adult");
  }
  
  // Determine if the person is a senior citizen (40 years or older)
  bool isSenior = age >= 40;
  if (isSenior) {
    print('You are also a Senior Citizen.');
  }

  // Print summary statuses using String interpolation
  print('Adult status: $adult');
  print('Senior status: $isSenior');
}
