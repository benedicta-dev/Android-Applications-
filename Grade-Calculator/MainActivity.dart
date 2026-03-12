class Student {
  final String name;
  final double? score;

  Student({required this.name, this.score});
}

String calculateGrade(double? score) {
  double actualScore = score ?? 0.0;

  if (actualScore >= 90) return 'A';
  if (actualScore >= 80) return 'B';
  if (actualScore >= 70) return 'C';
  if (actualScore >= 60) return 'D';
  return 'F';
}

void displayStudentReport(Student student) {
  String scoreDisplay = student.score?.toString() ?? 'No score recorded';
  String grade = calculateGrade(student.score);

  print('==========================');
  print('        Student Report    ');
  print('==========================');
  print('Name  : ${student.name.toUpperCase()}');
  print('Score : $scoreDisplay');
  print('Grade : $grade');
  print('==========================');
  print('');
}

void main() {
  Student student1 = Student(name: 'Jenny', score: 85.5);
  Student student2 = Student(name: 'Rita');
  Student student3 = Student(name: 'Precious', score: 52.0);
  Student student4 = Student(name: 'Glenys', score: 93.0);
  Student student5 = Student(name: 'Paola', score: 70.0);

  displayStudentReport(student1);
  displayStudentReport(student2);
  displayStudentReport(student3);
  displayStudentReport(student4);
  displayStudentReport(student5);
}
