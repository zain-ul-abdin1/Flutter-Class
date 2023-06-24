void main() {
  List<int> originalList = [1, 2, 3, 4, 5];

  List<int> squaredList = originalList.map((number) => number * number).toList();

  print('Original List: $originalList');
  print('Squared List: $squaredList');
}
