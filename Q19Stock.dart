void main() {
  Map<String, dynamic> product = {
    'name': 'Apple',
    'price': 1.99,
    'quantity': 10,
  };

  if (product['quantity'] > 0) {
    print('In stock');
  } else {
    print('Out of stock');
  }
}
