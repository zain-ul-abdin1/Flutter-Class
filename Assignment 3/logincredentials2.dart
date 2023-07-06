import 'dart:io';

void main() {
  List<Map<String, String>> credentials = [
    {'email': 'example1@example.com', 'password': 'password123'},
    {'email': 'example2@example.com', 'password': 'password456'},
    {'email': 'example3@example.com', 'password': 'password789'},
  ];

  bool isLoggedIn = false;

  while (!isLoggedIn) {
    print('Enter your email:');
    String email = stdin.readLineSync() ?? '';

    print('Enter your password:');
    String password = stdin.readLineSync() ?? '';
    for (var credential in credentials) {
      if (email == credential['email'] && password == credential['password']) {
        isLoggedIn = true;
        print('User login successful.');
        break;
      }
    }

    if (!isLoggedIn) {
      print('Invalid email or password. Please try again.');
    }
  }
}
