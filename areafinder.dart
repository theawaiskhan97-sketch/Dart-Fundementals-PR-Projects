import 'dart:io';
import 'dart:math';

double squareArea(double side) {
  return side * side;
}

double rectangle(double length, double width) {
  return length * width;
}

double circle(double radius) {
  return pi * radius * radius;
}

double triangle(double base, double height) {
  return 0.5 * base * height;
}

void main() {
  print('============================');
  print('      AREA FINDER APP       ');
  print('============================');
  print('1. Square');
  print('2. Rectangle');
  print('3. Circle');
  print('4. Triangle');
  print('----------------------------');
  stdout.write('Choose a shape (1-4): ');
  String? choice = stdin.readLineSync();
  double area = 0;
  if (choice == '1') {
    stdout.write("Enter Side Length:");
    double side = double.parse(stdin.readLineSync()!);
    area = squareArea(side);
    print("Area Of square = $area");
  } else if (choice == '2') {
    stdout.write("Enter Length:");
    double length = double.parse(stdin.readLineSync()!);
    stdout.write("Enter Width:");
    double width = double.parse(stdin.readLineSync()!);
    area = rectangle(length, width);
    print("Area of Rectangle = $area");
  } else if (choice == '3') {
    stdout.write("Enter Radius:");
    double radius = double.parse(stdin.readLineSync()!);
    area = circle(radius);
    print('Area of Circle = ${area.toStringAsFixed(4)}');
  } else if (choice == '4') {
    stdout.write("Enter base:");
    double base = double.parse(stdin.readLineSync()!);
    stdout.write("Enter Hieght:");
    double height = double.parse(stdin.readLineSync()!);
    area = triangle(base, height);
    print('Area of Triangle = $area');
  } else {
    print('Invalid choice! Please enter a number from 1 to 4.');
  }
}
