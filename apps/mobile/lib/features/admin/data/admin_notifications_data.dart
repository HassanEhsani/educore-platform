import '../domain/admin_notification.dart';

class AdminNotificationsData {
  static const List<AdminNotification> notifications = [
    AdminNotification(
      id: '1',
      title: 'New School Registered',
      message: 'EduCore North Branch has been added successfully.',
      time: '5 min ago',
      type: 'Business',
    ),

    AdminNotification(
      id: '2',
      title: 'Monthly Revenue Updated',
      message: 'Revenue increased by 12% compared to last month.',
      time: '30 min ago',
      type: 'Finance',
    ),

    AdminNotification(
      id: '3',
      title: 'New Teacher Joined',
      message: 'Mr. Ahmad has joined the Mathematics Department.',
      time: 'Today',
      type: 'Education',
      isRead: true,
    ),

    AdminNotification(
      id: '4',
      title: 'Attendance Completed',
      message: 'Daily attendance has been submitted successfully.',
      time: 'Yesterday',
      type: 'System',
      isRead: true,
    ),

    AdminNotification(
      id: '5',
      title: 'Backup Completed',
      message: 'Nightly database backup completed successfully.',
      time: 'Yesterday',
      type: 'Security',
      isRead: true,
    ),
  ];
}
