import '../domain/notification_item.dart';

final List<NotificationItem> fakeNotifications = [
  NotificationItem(
    id: '1',
    title: 'Homework',
    message: 'Math homework deadline is tomorrow.',
    date: DateTime(2026, 7, 15, 9, 30),
    isRead: false,
  ),
  NotificationItem(
    id: '2',
    title: 'Exam',
    message: 'Physics exam starts next Monday.',
    date: DateTime(2026, 7, 14, 11, 0),
    isRead: true,
  ),
  NotificationItem(
    id: '3',
    title: 'School',
    message: 'School will be closed on Friday.',
    date: DateTime(2026, 7, 13, 8, 15),
    isRead: false,
  ),
];
