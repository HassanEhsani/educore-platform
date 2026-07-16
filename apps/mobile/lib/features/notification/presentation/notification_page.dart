import 'package:flutter/material.dart';

import '../data/fake_notifications.dart';
import '../domain/notification_item.dart';
import 'widgets/notification_card.dart';
import 'widgets/notification_filter.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    List<NotificationItem> items = selected == 0
        ? fakeNotifications
        : fakeNotifications.where((e) => !e.isRead).toList();

    return Scaffold(
      appBar: AppBar(title: const Text('Notifications')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            NotificationFilter(
              selectedIndex: selected,
              onChanged: (value) {
                setState(() {
                  selected = value;
                });
              },
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return NotificationCard(notification: items[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
