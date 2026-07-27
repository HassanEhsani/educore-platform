import 'package:flutter/material.dart';

import '../../data/fake_notifications.dart';
import '../../domain/dashboard_notification.dart';
import 'package:go_router/go_router.dart';

class StudentNotificationsPage extends StatelessWidget {
  const StudentNotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final notifications = FakeNotifications.items;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),

        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            if (context.canPop()) {
              context.pop();
            } else {
              context.go('/student');
            }
          },
        ),
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(16),

        itemCount: notifications.length,

        itemBuilder: (context, index) {
          final notification = notifications[index];

          return _NotificationCard(notification: notification);
        },
      ),
    );
  }
}

class _NotificationCard extends StatelessWidget {
  final DashboardNotification notification;

  const _NotificationCard({required this.notification});

  @override
  Widget build(BuildContext context) {
    final color = _notificationColor(notification.type);

    return Card(
      margin: const EdgeInsets.only(bottom: 12),

      elevation: notification.isRead ? 0 : 3,

      child: Padding(
        padding: const EdgeInsets.all(16),

        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: color.withValues(alpha: 0.15),

              child: Icon(_notificationIcon(notification.type), color: color),
            ),

            const SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    notification.title,

                    style: TextStyle(
                      fontWeight: notification.isRead
                          ? FontWeight.normal
                          : FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 6),

                  Text(notification.message),

                  const SizedBox(height: 6),

                  Text(
                    _formatDate(notification.createdAt),

                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color _notificationColor(NotificationType type) {
    switch (type) {
      case NotificationType.grade:
        return Colors.blue;

      case NotificationType.assignment:
        return Colors.purple;

      case NotificationType.attendance:
        return Colors.orange;

      case NotificationType.announcement:
        return Colors.indigo;

      case NotificationType.payment:
        return Colors.green;

      case NotificationType.general:
        return Colors.grey;
    }
  }

  IconData _notificationIcon(NotificationType type) {
    switch (type) {
      case NotificationType.grade:
        return Icons.school;

      case NotificationType.assignment:
        return Icons.assignment;

      case NotificationType.attendance:
        return Icons.fact_check;

      case NotificationType.announcement:
        return Icons.campaign;

      case NotificationType.payment:
        return Icons.payment;

      case NotificationType.general:
        return Icons.notifications;
    }
  }

  String _formatDate(DateTime date) {
    return '${date.day}/${date.month}/${date.year}';
  }
}
