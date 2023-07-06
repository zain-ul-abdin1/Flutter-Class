void main() {
  int n1 = 1;
  int factorial = 1;
  for (int i = 2; i <= 5; i++) {
    factorial = i * n1;
    n1 = factorial;
  }
  print(factorial);
}
