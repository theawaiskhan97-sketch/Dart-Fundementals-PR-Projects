import 'dart:io';

/// Electricity Bill Calculator
/// This program calculates an electricity bill based on units consumed and price per unit.
/// It implements a tiered slab rate system where unit rates increase as consumption rises:
/// - First 100 units: base rate (pricePerUnit)
/// - Next 100 units (101-200): base rate + Rs. 3.0
/// - Next 100 units (201-300): base rate + Rs. 7.0
/// - Units above 300: base rate + Rs. 13.0
/// A 25% flat tax is added to the base bill to determine the total bill.

void main() {
  // Ask the user how many units were consumed
  stdout.write("Enter units consumed: ");
  int units = int.parse(stdin.readLineSync()!);

  // Ask the user the current price per unit
  stdout.write("Enter price per unit (Rs.): ");
  double pricePerUnit = double.parse(stdin.readLineSync()!);

  double bill = 0;

  // Calculate bill according to progressive slab rates:
  if (units <= 100) {
    // Tier 1: Consumed units are up to 100.
    bill = units * pricePerUnit;
  } else if (units <= 200) {
    // Tier 2: Consumed units are between 101 and 200.
    // 100 units at base rate + remaining units with a Rs. 3 surcharge.
    bill = (100 * pricePerUnit) + ((units - 100) * (pricePerUnit + 3.0));
  } else if (units <= 300) {
    // Tier 3: Consumed units are between 201 and 300.
    // First 100 at base, second 100 with Rs. 3 surcharge, and remaining with Rs. 7 surcharge.
    bill =
        (100 * pricePerUnit) +
        (100 * (pricePerUnit + 3.0)) +
        ((units - 200) * (pricePerUnit + 7.0));
  } else {
    // Tier 4: Consumed units exceed 300.
    // Progressively charges surcharges of Rs. 3, Rs. 7, and Rs. 13 for each respective tier block.
    bill =
        (100 * pricePerUnit) +
        (100 * (pricePerUnit + 3.0)) +
        (100 * (pricePerUnit + 7.0)) +
        ((units - 300) * (pricePerUnit + 13.0));
  }

  // Add 25% tax on the base bill
  double tax = bill * 0.25;
  // Calculate final total bill amount
  double total = bill + tax;

  // Display formatted result card showing details
  print("\n==============================");
  print("    ELECTRICITY BILL          ");
  print("==============================");
  print("Units Consumed : $units");
  print("Price/Unit     : Rs. ${pricePerUnit.toStringAsFixed(2)}");
  print("Base Bill      : Rs. ${bill.toStringAsFixed(3)}");
  print("Tax (25%)      : Rs. ${tax.toStringAsFixed(3)}");
  print("------------------------------");
  print("Total Bill     : Rs. ${total.toStringAsFixed(2)}");
  print("==============================");
}
