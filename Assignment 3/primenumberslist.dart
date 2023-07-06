void main() {
  List<int> numbers = [17, 20, 23, 27, 31, 35, 37];
  List<int> primeNumbers = [];

  for (int number in numbers) {
    if (isPrime(number)) {
      primeNumbers.add(number);
    }
  }

  print('Prime numbers: $primeNumbers');
}

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }

  for (int i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}
