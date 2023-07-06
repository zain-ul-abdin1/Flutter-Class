void main() {
  List<Map<String, dynamic>> students = [
    {
      'name': 'Ahmed',
      'marks': [80, 90, 70],
      'section': 'A',
      'rollNumber': '101'
    },
    {
      'name': 'Fatima',
      'marks': [95, 85, 92],
      'section': 'B',
      'rollNumber': '102'
    },
    {
      'name': 'Ali',
      'marks': [70, 65, 80],
      'section': 'A',
      'rollNumber': '103'
    },
  ];

  for (var student in students) {
    String studentName = student['name'];
    List<int> marks = student['marks'];
    String grade = calculateGrade(marks);

    print('Student Name: $studentName, Grade: $grade');
  }
}

String calculateGrade(List<int> marks) {
  int totalMarks = marks.reduce((a, b) => a + b);
  double average = totalMarks / marks.length;
  double percentage = (average / 100) * 100;

  if (percentage >= 90) {
    return 'A';
  } else if (percentage >= 80) {
    return 'B';
  } else if (percentage >= 70) {
    return 'C';
  } else if (percentage >= 60) {
    return 'D';
  } else {
    return 'F';
  }
}
