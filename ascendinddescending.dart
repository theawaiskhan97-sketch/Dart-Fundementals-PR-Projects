import 'dart:io';

void main() {
  stdout.write("Enter numbers separated by space: ");
  String input = stdin.readLineSync()!;
  List<int> numbers = input.split(' ').map((e) => int.parse(e)).toList();

  print("Original list: $numbers");
  List<int> ascending = List.from(numbers);
  ascending.sort();
  print("Ascending Order: $ascending");

  List<int> descending = List.from(numbers);
  descending.sort((a, b) => b.compareTo(a));
  print("Descending Order: $descending");
}
