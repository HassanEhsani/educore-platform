import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/admin_notifications_data.dart';
import '../../domain/admin_notification.dart';

class AdminNotificationsPage extends StatefulWidget {
  const AdminNotificationsPage({super.key});

  @override
  State<AdminNotificationsPage> createState() => _AdminNotificationsPageState();
}

class _AdminNotificationsPageState extends State<AdminNotificationsPage> {
  late List<AdminNotification> notifications;

  @override
  void initState() {
    super.initState();

    notifications = List.of(AdminNotificationsData.notifications);
  }

  @override
  Widget build(BuildContext context) {
    final unreadCount = notifications.where((item) => !item.isRead).length;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => context.go('/admin'),
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

        separatorBuilder: (_, _) => const SizedBox(height: 12),

        itemBuilder: (context, index) {
          final notification = notifications[index];

          return _NotificationCard(
            notification: notification,

            onTap: () {
              setState(() {
                notifications[index] = notification.copyWith(isRead: true);
              });
            },
          );
        },
      ),
    );
  }
}

class _NotificationCard extends StatelessWidget {
  final AdminNotification notification;
  final VoidCallback onTap;

  const _NotificationCard({required this.notification, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      elevation: 0,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),

      child: ListTile(
        onTap: onTap,

        contentPadding: const EdgeInsets.all(16),

        leading: CircleAvatar(
          backgroundColor: notification.isRead
              ? colors.surfaceContainerHighest
              : colors.primaryContainer,

          child: Icon(
            notification.isRead
                ? Icons.notifications_none
                : Icons.notifications_active,

            color: notification.isRead ? null : colors.primary,
          ),
        ),

        title: Text(
          notification.title,

          style: TextStyle(
            fontWeight: notification.isRead ? FontWeight.w500 : FontWeight.bold,
          ),
        ),

        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            const SizedBox(height: 6),

            Text(notification.message),

            const SizedBox(height: 8),

            Text(
              notification.type,

              style: Theme.of(
                context,
              ).textTheme.bodySmall?.copyWith(fontWeight: FontWeight.bold),
            ),
          ],
        ),

        trailing: Text(
          notification.time,

          style: Theme.of(context).textTheme.bodySmall,
        ),
      ),
    );
  }
}
