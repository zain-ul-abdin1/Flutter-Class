void main() {
  List numbers = [87, 78, 95, 25, 101, 677, 88, 117];
  int smallest = numbers.reduce((a, b) => a < b ? a : b);
  int greatest = numbers.reduce((a, b) => a > b ? a : b);
  print("The greatest number is $greatest");
  print("The greatest number is $smallest");
  
}
