import 'dart:io';

void main(){

  stdout.write("Enter unit price: ");
  double unitPrice = double.parse(stdin.readLineSync()!);

  stdout.write("Enter quantity: ");
  int quantity = int.parse(stdin.readLineSync()!);

  
  calculateRevenue(unitPrice, quantity);
}

void calculateRevenue(double unitPrice, int quantity) {
  double revenue;
  double discountRate = 0;


  revenue = unitPrice * quantity;


  if (quantity >= 100 && quantity <= 120) {
    discountRate = 0.10;
  } else if (quantity > 120) {
    discountRate = 0.15;
  }


  double discountAmount = revenue * discountRate;
  double discountedRevenue = revenue - discountAmount;

  print("The revenue from sale: $discountedRevenue");
  print("The discount rate you received is ${discountRate * 100}");
}
