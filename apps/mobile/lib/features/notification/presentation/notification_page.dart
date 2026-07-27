import 'package:flutter/material.dart';

import '../../student/data/fake_notifications.dart';
import '../../student/domain/dashboard_notification.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    final notifications = selected == 0
        ? FakeNotifications.items
        : FakeNotifications.items.where((item) => !item.isRead).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Notifications')),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [
            Row(
              children: [
                ChoiceChip(
                  label: const Text('All'),

                  selected: selected == 0,

                  onSelected: (_) {
                    setState(() {
                      selected = 0;
                    });
                  },
                ),

                const SizedBox(width: 12),

                ChoiceChip(
                  label: const Text('Unread'),

                  selected: selected == 1,

                  onSelected: (_) {
                    setState(() {
                      selected = 1;
                    });
                  },
                ),
              ],
            ),

            const SizedBox(height: 16),

            Expanded(
              child: ListView.builder(
                itemCount: notifications.length,

                itemBuilder: (context, index) {
                  final notification = notifications[index];

                  return Card(
                    child: ListTile(
                      leading: Icon(
                        notification.isRead
                            ? Icons.notifications_none
                            : Icons.notifications_active,
                      ),

                      title: Text(notification.title),

                      subtitle: Text(notification.message),

                      trailing: Text(
                        '${notification.createdAt.day}/${notification.createdAt.month}',
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
