void main() {
  String input = 'Pakistan!';
  int Count = 0;
  String lowercaseInput = input.toLowerCase();
  for (int i = 0; i < lowercaseInput.length; i++) {
    if (lowercaseInput[i] == 'a' ||
        lowercaseInput[i] == 'e' ||
        lowercaseInput[i] == 'i' ||
        lowercaseInput[i] == 'o' ||
        lowercaseInput[i] == 'u') {
      Count++;
    }
  }

  print('Number of vowels: $Count');
}
