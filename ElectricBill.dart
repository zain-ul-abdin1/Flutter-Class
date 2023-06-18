void main() {
  var customerId = 10153;
  String customerName = "Junaid";
  num unitConsumed = 188;
  num totalAmount = 0;
  ;

  if (unitConsumed < 200) {
    totalAmount = unitConsumed * 1.20;
  }
  if (unitConsumed >= 200 && unitConsumed < 400) {
    totalAmount = unitConsumed * 1.50;
  }
  if (unitConsumed >= 400 && unitConsumed < 600) {
    totalAmount = unitConsumed * 1.80;
  }
  if (unitConsumed >= 600) {
    totalAmount = unitConsumed * 2.00;
  }

  print("Customer No : $customerId");
  print("Customer Name : $customerName");
  print("Unit Consumed : $unitConsumed");
  print("Amount Charges @Rs. 1.20 per unit : $totalAmount");
  print("Net Bill Amount :$totalAmount");
}
