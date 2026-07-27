class Student {
  final String id;
  final String fullName;
  final String studentNumber;
  final int grade;
  final String avatarUrl;
  final String? parentName;
  final String? parentPhone;

  const Student({
    required this.id,
    required this.fullName,
    required this.studentNumber,
    required this.grade,
    required this.avatarUrl,
    this.parentName,
    this.parentPhone,
  });

  String get gradeLabel {
    return 'Grade $grade';
  }

  String get initials {
    final names = fullName.trim().split(' ');

    if (names.length == 1) {
      return names.first.substring(0, 1).toUpperCase();
    }

    return '${names.first[0]}${names.last[0]}'.toUpperCase();
  }

  String get displayStatus {
    return 'Active Student';
  }
}
