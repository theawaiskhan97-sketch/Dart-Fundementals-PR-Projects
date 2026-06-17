import 'dart:io';
import 'dart:math';

/// Area Finder App
/// This program calculates the area of various geometric shapes (Square, Rectangle, Circle, and Triangle)
/// based on the shape chosen by the user and the dimensions they provide.

/// Calculates the area of a square.
/// Formula: side * side
double squareArea(double side) {
  return side * side;
}

/// Calculates the area of a rectangle.
/// Formula: length * width
double rectangle(double length, double width) {
  return length * width;
}

/// Calculates the area of a circle.
/// Formula: pi * radius^2
double circle(double radius) {
  return pi * radius * radius;
}

/// Calculates the area of a triangle.
/// Formula: 0.5 * base * height
double triangle(double base, double height) {
  return 0.5 * base * height;
}

void main() {
  // Display the main selection menu
  print('============================');
  print('      AREA FINDER APP       ');
  print('============================');
  print('1. Square');
  print('2. Rectangle');
  print('3. Circle');
  print('4. Triangle');
  print('----------------------------');
  
  // Prompt the user to select a shape
  stdout.write('Choose a shape (1-4): ');
  String? choice = stdin.readLineSync();
  double area = 0;
  
  if (choice == '1') {
    // Square Area calculation
    stdout.write("Enter Side Length: ");
    double side = double.parse(stdin.readLineSync()!);
    area = squareArea(side);
    print("Area Of square = $area");
  } else if (choice == '2') {
    // Rectangle Area calculation
    stdout.write("Enter Length: ");
    double length = double.parse(stdin.readLineSync()!);
    stdout.write("Enter Width: ");
    double width = double.parse(stdin.readLineSync()!);
    area = rectangle(length, width);
    print("Area of Rectangle = $area");
  } else if (choice == '3') {
    // Circle Area calculation
    stdout.write("Enter Radius: ");
    double radius = double.parse(stdin.readLineSync()!);
    area = circle(radius);
    // Print the result formatted to 4 decimal places
    print('Area of Circle = ${area.toStringAsFixed(4)}');
  } else if (choice == '4') {
    // Triangle Area calculation
    stdout.write("Enter base: ");
    double base = double.parse(stdin.readLineSync()!);
    stdout.write("Enter Hieght: ");
    double height = double.parse(stdin.readLineSync()!);
    area = triangle(base, height);
    print('Area of Triangle = $area');
  } else {
    // Handle invalid user input
    print('Invalid choice! Please enter a number from 1 to 4.');
  }
}
