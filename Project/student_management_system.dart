import 'dart:io';

List students = [];
List teachers = [];
Map loggedInUser = {};

void main() {
  studentManagement();
}

studentManagement() {
  print("========== Welcome To Student Management System ===========");
  bool flag = true;
  while (flag) {
    print("===================");
    print("Type 1 for Student Portal.");
    print("Type 2 for Teacher Portal.");
    print("Type 3 or any other key for Exit.");
    String userInput = stdin.readLineSync()!;
    if (userInput == "1") {
      studentPortal();
    } else if (userInput == "2") {
      teacherPortal();
    } else {
      flag = false;
      print("Program Exited.");
    }
  }
}

studentPortal() {
  bool flag = true;
  while (flag) {
    print("========== Welcome To Student Portal ===========");
    print("Type 1 for Signup.");
    print("Type 2 for Login.");
    print("Type 3 for Back.");
    String userInput = stdin.readLineSync()!;
    if (userInput == "1") {
      studentSignup();
    } else if (userInput == "2") {
      studentLogin();
    } else if (userInput == "3") {
      flag = false;
      studentManagement();
    } else {
      print("Type the given options.");
    }
  }
}

studentSignup() {
  print("========== Student Signup ===========");
  print("Name:");
  String name = stdin.readLineSync()!;
  print("Email:");
  String email = stdin.readLineSync()!;
  print("Password:");
  String password = stdin.readLineSync()!;
  if (name != "" && email != "" && password != "") {
    students.add(
        {"name": name, "email": email, "password": password, "percentage": ""});
    print("Student Account Created successfully.");
    print("");
    studentPortal();
  } else {
    print("Feilds must not be empty.");
    print("");
    studentPortal();
  }
}

studentLogin() {
  print("========== Student Login ===========");
  print("Email");
  String email = stdin.readLineSync()!;
  print("Password");
  String password = stdin.readLineSync()!;
  var user = students
      .where((element) =>
          element["email"] == email && element["password"] == password)
      .toList();
  if (user.length > 0) {
    loggedInUser = user[0];
    print("Login successful.");
    print("");
    studentDashboard();
  } else {
    print("Invalid Credentials.");
    print("");
    studentPortal();
  }
}

teacherPortal() {
  bool flag = true;
  while (flag) {
    print("========== Welcome To Teacher Portal ===========");
    print("Type 1 for Signup.");
    print("Type 2 for Login.");
    print("Type 3 for Back.");
    String userInput = stdin.readLineSync()!;
    if (userInput == "1") {
      teacherSignup();
    } else if (userInput == "2") {
      teacherLogin();
    } else if (userInput == "3") {
      flag = false;
      studentManagement();
    } else {
      print("Type the given options.");
    }
  }
}

teacherSignup() {
  print("========== Teacher Signup ===========");
  print("Name:");
  String name = stdin.readLineSync()!;
  print("Email:");
  String email = stdin.readLineSync()!;
  print("Password:");
  String password = stdin.readLineSync()!;
  if (name != "" && email != "" && password != "") {
    teachers.add({"name": name, "email": email, "password": password});
    print("Teacher Account Created successfully.");
    print("");
    teacherPortal();
  } else {
    print("Feilds must not be empty.");
    print("");
    teacherPortal();
  }
}

teacherLogin() {
  print("========== Teacher Login ===========");
  print("Email");
  String email = stdin.readLineSync()!;
  print("Password");
  String password = stdin.readLineSync()!;
  var user = teachers
      .where((element) =>
          element["email"] == email && element["password"] == password)
      .toList();
  if (user.length > 0) {
    loggedInUser = user[0];
    print("Login successful.");
    print("");
    teacherDashboard();
  } else {
    print("Invalid Credentials.");
    print("");
    teacherDashboard();
  }
}

studentDashboard() {
  bool flag = true;
  while (flag) {
    print(
        "========== Hello ${loggedInUser["name"]} Welcome To Student Dashboard ===========");
    print("Type 1 to View your Information.");
    print("Type 2 to Edit your Information.");
    print("Type 3 to View your Percentage.");
    print("Type 4 to Logout.");
    String userInput = stdin.readLineSync()!;
    if (userInput == "1") {
      viewStudentInfo();
    } else if (userInput == "2") {
      editStudentInfo();
    } else if (userInput == "3") {
      viewStudentPerc();
    } else if (userInput == "4") {
      flag = false;
      print("");
      loggedInUser = {};
      print("Logged Out successfully");
      print("");
      studentPortal();
    }
  }
}

viewStudentInfo() {
  print("");
  print("=== Your Information ===");
  print("Name: ${loggedInUser['name']}");
  print("Email: ${loggedInUser['email']}");
  print("");
}

editStudentInfo() {
  print("===== Edit Information =====");
  print("Name:");
  String name = stdin.readLineSync()!;
  print("Email:");
  String email = stdin.readLineSync()!;
  print("Password:");
  String password = stdin.readLineSync()!;
  int index = students.indexWhere((element) =>
      element["name"] == loggedInUser["name"] &&
      element["email"] == loggedInUser["email"]);
  loggedInUser = {
    "name": name != "" ? name : students[index]["name"],
    "email": email != "" ? email : students[index]["email"],
    "percentage": students[index]["percentage"]
  };
  students[index] = {
    ...students[index],
    "name": name != "" ? name : students[index]["name"],
    "email": email != "" ? email : students[index]["email"],
    "password": password != "" ? password : students[index]["password"]
  };
  print("Information Updated.");
  print("");
}

viewStudentPerc() {
  print("");
  print("Your Percentage.");
  print("Percentage: ${loggedInUser['percentage']}");
  print("");
}

teacherDashboard() {
  bool flag = true;
  while (flag) {
    print(
        "========== Hello ${loggedInUser["name"]} Welcome To Teacher Dashboard ===========");
    print("Type 1 to View your Information.");
    print("Type 2 to Edit your Information.");
    print("Type 3 to Edit Student Percentage.");
    print("Type 4 to View List of Students.");
    print("Type 5 to View Students by name.");
    print("Type 6 to View Students by email.");
    print("Type 7 to Logout.");
    String userInput = stdin.readLineSync()!;
    if (userInput == "1") {
      viewTeacherInfo();
    } else if (userInput == "2") {
      editTeacherInfo();
    } else if (userInput == "3") {
      editStudentPerc();
    } else if (userInput == "4") {
      print("===== List of students =====");
      for (var element in students) {
        print(
            "Student Name: ${element["name"]}, Student Email: ${element["email"]}, Percentage: ${element["percentage"]}");
      }
      print("");
    } else if (userInput == "5") {
      viewStudentByName();
    } else if (userInput == "6") {
      viewStudentByEmail();
    } else if (userInput == "7") {
      flag = false;
      print("");
      loggedInUser = {};
      print("Logged Out successfully");
      print("");
      teacherPortal();
    }
  }
}

viewTeacherInfo() {
  print("");
  print("=== Your Information ===");
  print("Name: ${loggedInUser['name']}");
  print("Email: ${loggedInUser['email']}");
  print("");
}

editTeacherInfo() {
  print("===== Edit Information =====");
  print("Name:");
  String name = stdin.readLineSync()!;
  print("Email:");
  String email = stdin.readLineSync()!;
  print("Password:");
  String password = stdin.readLineSync()!;
  int index = teachers.indexWhere((element) =>
      element["name"] == loggedInUser["name"] &&
      element["email"] == loggedInUser["email"]);
  loggedInUser = {
    "name": name != "" ? name : teachers[index]["name"],
    "email": email != "" ? email : teachers[index]["email"],
    "percentage": teachers[index]["percentage"]
  };
  teachers[index] = {
    ...teachers[index],
    "name": name != "" ? name : teachers[index]["name"],
    "email": email != "" ? email : teachers[index]["email"],
    "password": password != "" ? password : teachers[index]["password"]
  };
  print("Information Updated.");
  print("");
}

editStudentPerc() {
  print("===== Edit Student Percentage =====");
  print("Student Email:");
  String email = stdin.readLineSync()!;
  print("Percentage:");
  String perc = stdin.readLineSync()!;
  int index = students.indexWhere((element) => element["email"] == email);
  if (email != "" && index != -1) {
    if (perc != "") {
      students[index]["percentage"] = perc;
      print("Percentage updated successfully.");
      print("");
    } else {
      print("Percentage must not be empty.");
      print("");
    }
  } else {
    print("Invalid Student Email.");
    print("");
  }
}

viewStudentByName() {
  print("===== View Students by Name =====");
  print("Name:");
  String name = stdin.readLineSync()!;
  if (name != "") {
    int index = students.indexWhere((element) => element["name"] == name);
    if (index != -1) {
      print(
          "Student: {Name: ${students[index]["name"]}, Email: ${students[index]["email"]}, Percentage: ${students[index]["percentage"]}}");
    } else {
      print("");
      print("Invalid Name.");
    }
  } else {
    print("Name must not be empty.");
  }
  print("");
}

viewStudentByEmail() {
  print("===== View Students by Email =====");
  print("Email:");
  String email = stdin.readLineSync()!;
  if (email != "") {
    int index = students.indexWhere((element) => element["email"] == email);
    if (index != -1) {
      print(
          "Student: {Name: ${students[index]["name"]}, Email: ${students[index]["email"]}, Percentage: ${students[index]["percentage"]}}");
    } else {
      print("");
      print("Invalid Email.");
    }
  } else {
    print("Email must not be empty.");
  }
  print("");
}
