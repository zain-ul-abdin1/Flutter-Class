void main() {
  List<int> numbers = [5, 8, 2, 10, 3, 1];

  int maxNumber = numbers.reduce((currentMax, number) => currentMax > number ? currentMax : number);

  print('The maximum value is: $maxNumber');
}
