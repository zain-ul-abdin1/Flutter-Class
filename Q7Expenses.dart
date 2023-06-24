void main() {
  Map<String, double> expenses = {
    'sun': 3000.0,
    'mon': 3000.0,
    'tue': 3234.0,
  };

  String day = 'fri';
  double newValue = 5000.0;

  if (expenses.containsKey(day)) {
    expenses[day] = newValue;
  } else {
    expenses[day] = newValue;
  }

  print('Updated expenses:');
  print(expenses);
}
