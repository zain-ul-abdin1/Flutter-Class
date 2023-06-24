void main() {
  List<int> originalList = [1, -2, 3, -4, 5, -6];

  List<int> positiveNumbers = originalList.where((number) => number > 0).toList();

  print('Original List: $originalList');
  print('Positive Numbers: $positiveNumbers');
}
