import 'package:flutter/material.dart';

class ParentNotificationsPage extends StatelessWidget {
  const ParentNotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notifications')),
      body: const Center(
        child: Text('Notifications', style: TextStyle(fontSize: 20)),
      ),
    );
  }
}
