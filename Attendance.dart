void main() {
  int classesHeld = 16;

  int classesAttended = 10;
  num attendance = (classesAttended / classesHeld) * 100;

  if (attendance >= 75) {
    print("You are allowed to sit in Exams");
  } else {
    print("You're not allowed to sit in Exams");
  }
}
