import 'dart:io';

void main() {
  // Ask the user how many units were consumed
  stdout.write("Enter units consumed: ");
  int units = int.parse(stdin.readLineSync()!);

  // Ask the user the current price per unit
  stdout.write("Enter price per unit (Rs.): ");
  double pricePerUnit = double.parse(stdin.readLineSync()!);

  double bill = 0;

  // Calculate bill according to slab rates
  if (units <= 100) {
    bill = units * pricePerUnit;
  } else if (units <= 200) {
    bill = (100 * pricePerUnit) + ((units - 100) * (pricePerUnit + 3.0));
  } else if (units <= 300) {
    bill =
        (100 * pricePerUnit) +
        (100 * (pricePerUnit + 3.0)) +
        ((units - 200) * (pricePerUnit + 7.0));
  } else {
    bill =
        (100 * pricePerUnit) +
        (100 * (pricePerUnit + 3.0)) +
        (100 * (pricePerUnit + 7.0)) +
        ((units - 300) * (pricePerUnit + 13.0));
  }

  // Add 10% tax on the base bill
  double tax = bill * 0.10;
  double total = bill + tax;

  // Display result card
  print("\n==============================");
  print("    ELECTRICITY BILL          ");
  print("==============================");
  print("Units Consumed : $units");
  print("Price/Unit     : Rs. ${pricePerUnit.toStringAsFixed(2)}");
  print("Base Bill      : Rs. ${bill.toStringAsFixed(2)}");
  print("Tax (10%)      : Rs. ${tax.toStringAsFixed(2)}");
  print("------------------------------");
  print("Total Bill     : Rs. ${total.toStringAsFixed(2)}");
  print("==============================");
}
