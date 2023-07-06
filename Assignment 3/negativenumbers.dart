void main() {
  List<int> numbers = [-3, 7, -9, 5, -1];
  int negativeCount = 0;
  int negativeSum = 0;

  for (int number in numbers) {
    if (number < 0) {
      negativeSum += number;
      negativeCount++;
    }
  }

  double negativeAverage = negativeCount > 0 ? negativeSum / negativeCount : 0;

  print('Average of negative numbers: $negativeAverage');
}
