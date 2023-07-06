void main() {
  int number = 19;
  bool isPrime = true;
  for (int i = 2; i <= number/2; i++) {
    if (number % i == 0) {
      isPrime = false;
      break;
    }
  }
  if (isPrime == true) {
    print("Given number is Prime");
  }
  else
  {
      print("Given number is not Prime");
  }
}
