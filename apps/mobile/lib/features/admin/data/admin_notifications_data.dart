class AdminNotification {
  final String title;
  final String message;
  final String time;
  final bool isRead;

  const AdminNotification({
    required this.title,
    required this.message,
    required this.time,
    this.isRead = false,
  });
}

class AdminNotificationsData {
  static const List<AdminNotification> notifications = [
    AdminNotification(
      title: 'New School Registered',
      message: 'EduCore North Branch has been added successfully.',
      time: '5 min ago',
    ),
    AdminNotification(
      title: 'Monthly Revenue Updated',
      message: 'Revenue increased by 12% compared to last month.',
      time: '30 min ago',
    ),
    AdminNotification(
      title: 'New Teacher Joined',
      message: 'Mr. Ahmad has joined the Mathematics Department.',
      time: 'Today',
      isRead: true,
    ),
    AdminNotification(
      title: 'Attendance Completed',
      message: 'Daily attendance has been submitted.',
      time: 'Yesterday',
      isRead: true,
    ),
    AdminNotification(
      title: 'Backup Completed',
      message: 'Nightly database backup completed successfully.',
      time: 'Yesterday',
      isRead: true,
    ),
  ];
}
