class DashboardNotification {
  final String id;

  final String title;

  final String message;

  final NotificationType type;

  final DateTime createdAt;

  final bool isRead;

  const DashboardNotification({
    required this.id,
    required this.title,
    required this.message,
    required this.type,
    required this.createdAt,
    required this.isRead,
  });
}

enum NotificationType { payment, attendance, academic, system }
