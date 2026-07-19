class NotificationManager {
  NotificationManager._();

  static final NotificationManager instance = NotificationManager._();

  Future<void> initialize() async {}

  Future<void> showNotification({
    required String title,
    required String message,
  }) async {
    print('$title: $message');
  }
}
