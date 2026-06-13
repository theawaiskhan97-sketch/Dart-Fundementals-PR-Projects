import 'dart:io';

void main() {
  print('Enter number of hours:');

  String? input = stdin.readLineSync();
  double? hours = double.tryParse(input!);

  if (hours == null) {
    print('Please enter a valid number.');
    return;
  }

  double minutes = hours * 60;
  double seconds = hours * 3600;
  double days = hours / 24;

  print('$hours hour(s) = $minutes minute(s)');
  print('$hours hour(s) = $seconds second(s)');
  print('$hours hour(s) = $days day(s)');
}
