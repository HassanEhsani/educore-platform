import '../domain/dashboard_notification.dart';

class FakeNotifications {
  FakeNotifications._();

  static final List<DashboardNotification> items = [
    DashboardNotification(
      id: 'student_notification_001',
      title: 'New Grade Published',
      message: 'Your Mathematics grade has been published by your teacher.',
      createdAt: DateTime.now().subtract(const Duration(minutes: 15)),
      type: NotificationType.grade,
      isRead: false,
    ),

    DashboardNotification(
      id: 'student_notification_002',
      title: 'Homework Reminder',
      message: 'Science homework submission deadline is tomorrow.',
      createdAt: DateTime.now().subtract(const Duration(hours: 2)),
      type: NotificationType.assignment,
      isRead: false,
    ),

    DashboardNotification(
      id: 'student_notification_003',
      title: 'Attendance Updated',
      message: 'Your attendance record has been updated.',
      createdAt: DateTime.now().subtract(const Duration(hours: 5)),
      type: NotificationType.attendance,
      isRead: true,
    ),

    DashboardNotification(
      id: 'student_notification_004',
      title: 'School Announcement',
      message: 'School will be closed next Thursday.',
      createdAt: DateTime.now().subtract(const Duration(days: 1)),
      type: NotificationType.announcement,
      isRead: true,
    ),

    DashboardNotification(
      id: 'student_notification_005',
      title: 'Payment Reminder',
      message: 'Your tuition payment deadline is approaching.',
      createdAt: DateTime.now().subtract(const Duration(days: 2)),
      type: NotificationType.payment,
      isRead: false,
    ),
  ];
}
