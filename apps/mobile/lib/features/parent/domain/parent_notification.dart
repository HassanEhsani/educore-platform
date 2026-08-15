class ParentNotification {
  final String title;
  final String message;
  final DateTime createdAt;
  final bool isRead;
  final String type;

  const ParentNotification({
    required this.title,
    required this.message,
    required this.createdAt,
    required this.isRead,
    required this.type,
  });
}
