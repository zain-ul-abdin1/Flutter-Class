void main() {
  int year = 2000;

  if (year % 4 == 0) {
    if (year % 400 == 0) {
      print("It is a leap year");
    } else {
      print("It is not a leap year");
    }
  } else {
    print("It is not a leap year");
  }
}
