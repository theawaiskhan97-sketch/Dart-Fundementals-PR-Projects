import 'dart:io';

void main() {
  print("Enter a Number to Check:");
  int? number = int.tryParse(stdin.readLineSync()!);

  if (number == null) {
    print("Invalid number.");
    return;
  }

  if (number % 2 == 0) {
    print("Number is even.");
  } else {
    print("Number is odd.");
  }
}
