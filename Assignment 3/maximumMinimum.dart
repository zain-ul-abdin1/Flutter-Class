void main() {
  List<int> numbers = [3,7,5,8,1,0,5];
  
  int maximum = numbers[0];
  int minimum = numbers[0]; 

  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > maximum) {
      maximum = numbers[i]; 
    } else if (numbers[i] < minimum) {
      minimum = numbers[i]; 
    }
  }

  print('Maximum: $maximum');
  print('Minimum: $minimum');
}
 