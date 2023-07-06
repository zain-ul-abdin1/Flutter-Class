import 'dart:io';

void main() {

  String Email = 'abc@gmail.com';
  String Password = '12345678';

  bool isLoggedIn = false;

  while (!isLoggedIn) {
  
    print('Enter your email:');
    String email = stdin.readLineSync() ?? '';
    print('Enter your password:');
    String password = stdin.readLineSync() ?? '';
    if (email == Email && password == Password) {
      isLoggedIn = true;
      print('User login successful.');
    } else {
      print('Invalid email or password. Please try again.');
    }
  }
}
