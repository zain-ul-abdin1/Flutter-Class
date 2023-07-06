void main() {
  String letter = "level";
  String palindrome = letter.split('').reversed.join('');

  if (letter == palindrome) {
    print("$letter is a palindrome.");
  } else {
    print("$letter is not a palindrome.");
  }
}
