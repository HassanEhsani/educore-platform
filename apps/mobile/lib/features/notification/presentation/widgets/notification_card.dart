import 'package:flutter/material.dart';

import '../../domain/notification_item.dart';

class NotificationCard extends StatelessWidget {
  final NotificationItem notification;

  const NotificationCard({super.key, required this.notification});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(
            notification.isRead
                ? Icons.notifications_none
                : Icons.notifications_active,
          ),
        ),
        title: Text(notification.title),
        subtitle: Text(notification.message),
        trailing: Text(
          '${notification.date.day}/${notification.date.month}',
          style: const TextStyle(fontSize: 12),
        ),
      ),
    );
  }
}
