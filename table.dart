import 'dart:io';

void main() {
  print("Multiplication Table:");
  stdout.write("Enter a number:");
  String? input = stdin.readLineSync();
  int number = int.parse(input!);
  print("table of: $number");
  for (int i = 1; i <= 20; i++) {
    int result = number * i;
    print("$number * $i = $result ");
  }
}
