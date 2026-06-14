import 'dart:io';

// This is the function which checks wheter the gae is valid or not the age muxt be in between 1990-2026
bool validyear(int birthyear) {
  int currentyear = 2026;
  if (birthyear < 1990 || birthyear > currentyear) {
    return false;
  }
  return true;
}

// This is another function which checks if the person is adult or not
bool isadult(int age) {
  if (age >= 18) {
    return true;
  }
  return false;
}

void main() {
  // Here we are taking the input from the user
  print("----Age Calculator----");
  stdout.write("Enter your Birth Year:");
  int birthyear = int.parse(stdin.readLineSync()!);
  // using bool to store the result of valid year
  bool isValidyear = validyear(birthyear);
  int age = 0;
  if (isValidyear == false) {
    print("Invalid Birth year! Enter Birth year between 1990 to 2026");
  } else {
    int currentyear = 2026;
    age = currentyear - birthyear;
    print("Your Age is: $age years old");
  }
  // using bool to store the result of the person adlut or not
  bool adult = isadult(age);
  if (adult == true) {
    print("You are an Adult");
  } else {
    print("You are not an Adult");
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
