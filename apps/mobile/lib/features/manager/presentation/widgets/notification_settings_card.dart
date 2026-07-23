import 'package:flutter/material.dart';

import '../../domain/entities/manager_settings.dart';

class NotificationSettingsCard extends StatelessWidget {
  final ManagerSettings settings;

  const NotificationSettingsCard({super.key, required this.settings});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,

      child: SwitchListTile(
        secondary: const Icon(Icons.notifications_outlined),

        title: const Text('Notifications'),

        subtitle: Text(
          settings.notificationsEnabled
              ? 'Notifications are enabled'
              : 'Notifications are disabled',
        ),

        value: settings.notificationsEnabled,

        onChanged: (value) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                value ? 'Notifications enabled' : 'Notifications disabled',
              ),
            ),
          );
        },
      ),
    );
  }
}
