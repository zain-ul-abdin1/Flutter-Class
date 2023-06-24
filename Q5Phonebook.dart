void main() {
  Map<String, String> phoneBook = {
    'Zain': '03001234567',
    'Fatima': '03219876543',
    'Ali': '03335557777',
    'Sara': '03114446666',
  };

  // Find keys with length 4
  Iterable<String> keysWithLengthFour = phoneBook.keys.where((key) => key.length == 4);

  // Print the keys
  print('Keys with length 4:');
  print(keysWithLengthFour.toList());
}
