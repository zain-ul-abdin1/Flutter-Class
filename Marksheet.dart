void main() {
  num English = 88;
  num Maths = 67;
  num Science = 78;
  num Urdu = 72;
  num Islamic_Studies = 97;
  String stdName = "Amir";
  int stdId = 15;
  String grade_class = "4";
  int totalMarks = 500;
  num marksObtained = English + Maths + Science + Islamic_Studies + Urdu;
  num percentage = (marksObtained / totalMarks) * 100;
  String grade;

  if (percentage >= 90) {
    grade = "A+";
  } else if (percentage >= 80) {
    grade = "A";
  } else if (percentage >= 70) {
    grade = "B";
  } else if (percentage >= 60) {
    grade = "C";
  } else if (percentage >= 50) {
    grade = "D";
  } else {
    grade = "Fail";
  }

  print("Student Name   : $stdName");
  print("Roll Number    : $stdId");
  print("Class          : $grade_class");
  print("Percentage     : $percentage");
  print("Grade Obtained : $grade");
  print("English        : $English");
  print("Urdu           : $Urdu");
  print("Maths          : $Maths");
  print("Science        : $Science");
  print("Islamic Studies: $Islamic_Studies");
}
