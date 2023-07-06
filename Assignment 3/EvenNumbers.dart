void main() {
  List<int> Numbers = [1, 3, 4, 9, 7, 34, 56, 2, 32];
  List EvenNumber = [];
  for (int i = 0; i < Numbers.length; i++) {
    if (Numbers[i] % 2 == 0) {
      EvenNumber.add(Numbers[i]);
    }
  }
  print("The Even Numbers in given list are ${EvenNumber.join(",")}");
}
