enum NotificationType {
  grade,
  assignment,
  attendance,
  announcement,
  payment,
  general,
}

class DashboardNotification {
  final String id;
  final String title;
  final String message;
  final DateTime createdAt;
  final NotificationType type;
  final bool isRead;

  const DashboardNotification({
    required this.id,
    required this.title,
    required this.message,
    required this.createdAt,
    required this.type,
    required this.isRead,
  });

  DashboardNotification copyWith({
    String? id,
    String? title,
    String? message,
    DateTime? createdAt,
    NotificationType? type,
    bool? isRead,
  }) {
    return DashboardNotification(
      id: id ?? this.id,
      title: title ?? this.title,
      message: message ?? this.message,
      createdAt: createdAt ?? this.createdAt,
      type: type ?? this.type,
      isRead: isRead ?? this.isRead,
    );
  }
}
