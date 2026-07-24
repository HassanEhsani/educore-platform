import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ManagerNotificationsPage extends StatefulWidget {
  const ManagerNotificationsPage({super.key});

  @override
  State<ManagerNotificationsPage> createState() =>
      _ManagerNotificationsPageState();
}

class _ManagerNotificationsPageState extends State<ManagerNotificationsPage> {
  final List<_NotificationItem> notifications = [
    _NotificationItem(
      title: 'New Student Registration',
      message: '12 new students have registered today.',
      time: '10 min ago',
      isRead: false,
      icon: Icons.person_add_alt_1,
    ),
    _NotificationItem(
      title: 'Attendance Alert',
      message: 'Grade 10 attendance dropped below 90%.',
      time: '1 hour ago',
      isRead: false,
      icon: Icons.warning_amber_rounded,
    ),
    _NotificationItem(
      title: 'Monthly Revenue',
      message: 'Monthly revenue report is ready.',
      time: 'Yesterday',
      isRead: true,
      icon: Icons.attach_money,
    ),
    _NotificationItem(
      title: 'Teacher Request',
      message: 'A leave request is waiting for approval.',
      time: 'Yesterday',
      isRead: true,
      icon: Icons.assignment_ind,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final unreadCount = notifications
        .where((notification) => !notification.isRead)
        .length;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => context.go('/manager'),
        ),
        title: Row(
          children: [
            const Text('Notifications'),
            const SizedBox(width: 10),
            if (unreadCount > 0)
              CircleAvatar(
                radius: 12,
                child: Text(
                  '$unreadCount',
                  style: const TextStyle(fontSize: 12),
                ),
              ),
          ],
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: notifications.length,
        separatorBuilder: (_, __) => const SizedBox(height: 12),
        itemBuilder: (context, index) {
          final notification = notifications[index];

          return Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              onTap: () {
                setState(() {
                  notifications[index] = notification.copyWith(isRead: true);
                });
              },
              leading: CircleAvatar(
                backgroundColor: notification.isRead
                    ? Colors.grey.shade200
                    : Theme.of(context).colorScheme.primaryContainer,
                child: Icon(
                  notification.icon,
                  color: notification.isRead
                      ? Colors.grey
                      : Theme.of(context).colorScheme.primary,
                ),
              ),
              title: Text(
                notification.title,
                style: TextStyle(
                  fontWeight: notification.isRead
                      ? FontWeight.w500
                      : FontWeight.bold,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Text(notification.message),
              ),
              trailing: Text(
                notification.time,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          );
        },
      ),
    );
  }
}

class _NotificationItem {
  final String title;
  final String message;
  final String time;
  final bool isRead;
  final IconData icon;

  const _NotificationItem({
    required this.title,
    required this.message,
    required this.time,
    required this.isRead,
    required this.icon,
  });

  _NotificationItem copyWith({
    String? title,
    String? message,
    String? time,
    bool? isRead,
    IconData? icon,
  }) {
    return _NotificationItem(
      title: title ?? this.title,
      message: message ?? this.message,
      time: time ?? this.time,
      isRead: isRead ?? this.isRead,
      icon: icon ?? this.icon,
    );
  }
}
