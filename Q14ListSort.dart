void main() {
  List<int> originalList = [5, 2, 8, 1, 6];

  List<int> sortedList = List.from(originalList)..sort();

  print('Original List: $originalList');
  print('Sorted List: $sortedList');
}
