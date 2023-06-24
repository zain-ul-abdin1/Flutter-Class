void main() {
  List<String> originalList = ['apple', 'banana', 'orange', 'banana', 'apple', 'grape', 'orange'];

  List<String> uniqueList = originalList.toSet().toList();

  print('Original List: $originalList');
  print('Unique List: $uniqueList');
}
