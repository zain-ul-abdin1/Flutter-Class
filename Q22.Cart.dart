void main() {
  Map<String, dynamic> cart = {
    'Apple': 5,
    'Banana': 3,
    'Orange': 2,
  };

  if (cart.containsKey('Apple')) {
    print('Product found');
  } else {
    print('Product not found');
  }
}
