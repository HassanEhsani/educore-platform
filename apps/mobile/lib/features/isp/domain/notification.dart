enum IspNotificationType {
  general,
  payment,
  subscription,
  service,
  maintenance,
  support,
}

class IspNotification {
  final String id;
  final String title;
  final String message;
  final IspNotificationType type;
  final DateTime createdAt;
  final bool isRead;

  const IspNotification({
    required this.id,
    required this.title,
    required this.message,
    required this.type,
    required this.createdAt,
    required this.isRead,
  });
}
