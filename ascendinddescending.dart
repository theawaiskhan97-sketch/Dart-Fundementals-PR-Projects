import 'dart:io';

/// List Sorter Program
/// This program prompts the user to input a list of space-separated numbers,
/// parses them into a list of integers, and displays them sorted in both
/// ascending and descending orders.

void main() {
  // Prompt the user for input
  stdout.write("Enter numbers separated by space: ");
  String input = stdin.readLineSync()!;
  
  // Split the string by spaces, parse each substring into an integer, and convert to a List
  List<int> numbers = input.split(' ').map((e) => int.parse(e)).toList();

  // Print the original list entered by the user
  print("Original list: $numbers");
  
  // Clone the original list to avoid mutating the original data
  List<int> ascending = List.from(numbers);
  // Sort the list in-place in ascending order (default sort behavior)
  ascending.sort();
  print("Ascending Order: $ascending");

  // Clone the original list again
  List<int> descending = List.from(numbers);
  // Sort the list in-place in descending order by providing a custom comparator
  descending.sort((a, b) => b.compareTo(a));
  print("Descending Order: $descending");
}
