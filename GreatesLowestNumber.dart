void main() {
  num number1 = 66;
  num number2 = 73;
  num number3 = 786;
  num greatestNumber;
  num LowestNUmber;
  if (number1 > number2 && number1 > number3) {
    greatestNumber = number1;
  } else if (number2 > number1 && number2 > number3) {
    greatestNumber = number2;
  } else {
    greatestNumber = number3;
  }
  if (number1 < number2 && number1 < number3) {
    LowestNUmber = number1;
  } else if (number2 < number1 && number2 < number3) {
    LowestNUmber = number2;
  } else {
    LowestNUmber = number3;
  }
  print("The greatest Number is $greatestNumber");
  print("The lowest Number is $LowestNUmber");
}
