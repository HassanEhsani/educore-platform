class AdminNotification {
  final String id;
  final String title;
  final String message;
  final String time;
  final String type;
  final bool isRead;

  const AdminNotification({
    required this.id,
    required this.title,
    required this.message,
    required this.time,
    required this.type,
    this.isRead = false,
  });

  AdminNotification copyWith({bool? isRead}) {
    return AdminNotification(
      id: id,
      title: title,
      message: message,
      time: time,
      type: type,
      isRead: isRead ?? this.isRead,
    );
  }
}
