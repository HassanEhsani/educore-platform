class Student {
  final String id;
  final String fullName;
  final String studentNumber;
  final int grade;
  final String avatarUrl;

  const Student({
    required this.id,
    required this.fullName,
    required this.studentNumber,
    required this.grade,
    required this.avatarUrl,
  });

  String get gradeLabel {
    return 'Grade $grade';
  }
}
