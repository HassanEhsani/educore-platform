// lib/features/admin/domain/admin_activity.dart

enum ActivityType { business, report, user, security }

class AdminActivity {
  final String title;
  final String description;
  final ActivityType type;
  final String time;

  const AdminActivity({
    required this.title,
    required this.description,
    required this.type,
    required this.time,
  });
}
