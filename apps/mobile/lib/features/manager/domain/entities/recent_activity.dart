class RecentActivity {
  final String id;

  final String title;

  final String description;

  final ActivityType type;

  final DateTime createdAt;

  const RecentActivity({
    required this.id,
    required this.title,
    required this.description,
    required this.type,
    required this.createdAt,
  });
}

enum ActivityType { payment, student, teacher, attendance, report, system }
