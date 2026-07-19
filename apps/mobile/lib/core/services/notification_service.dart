class NotificationService {
  NotificationService._();

  static final NotificationService instance = NotificationService._();

  Future<void> initialize() async {}

  Future<void> showNotification({
    required String title,
    required String body,
  }) async {}
}
