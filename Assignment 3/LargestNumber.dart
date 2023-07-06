void main() {
  List<int> Numbers = [4, 55, 78, 3, 9, 71];
  int greatest = 0;
  for (int i = 0; i < Numbers.length; i++) {
    if (Numbers[i] > greatest) {
      greatest = Numbers[i];
    }
  }
  print("The greatest Number in given List is $greatest");
}
