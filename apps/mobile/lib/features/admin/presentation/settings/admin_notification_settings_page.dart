// lib/features/admin/presentation/settings/admin_notification_settings_page.dart

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AdminNotificationSettingsPage extends StatefulWidget {
  const AdminNotificationSettingsPage({super.key});

  @override
  State<AdminNotificationSettingsPage> createState() =>
      _AdminNotificationSettingsPageState();
}

class _AdminNotificationSettingsPageState
    extends State<AdminNotificationSettingsPage> {
  bool pushNotifications = true;
  bool studentUpdates = true;
  bool paymentAlerts = true;
  bool systemAlerts = true;
  bool securityAlerts = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => context.pop(),
        ),
        title: const Text('Notifications'),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [
          _SectionTitle(title: 'General'),

          _NotificationTile(
            icon: Icons.notifications_active_outlined,
            title: 'Push Notifications',
            subtitle: 'Receive application notifications',
            value: pushNotifications,
            onChanged: (value) {
              setState(() {
                pushNotifications = value;
              });
            },
          ),

          const SizedBox(height: 24),

          _SectionTitle(title: 'Business Activities'),

          _NotificationTile(
            icon: Icons.school_outlined,
            title: 'Student Updates',
            subtitle: 'Enrollment and student activity changes',
            value: studentUpdates,
            onChanged: (value) {
              setState(() {
                studentUpdates = value;
              });
            },
          ),

          _NotificationTile(
            icon: Icons.payments_outlined,
            title: 'Payment Alerts',
            subtitle: 'Revenue and payment notifications',
            value: paymentAlerts,
            onChanged: (value) {
              setState(() {
                paymentAlerts = value;
              });
            },
          ),

          const SizedBox(height: 24),

          _SectionTitle(title: 'System Monitoring'),

          _NotificationTile(
            icon: Icons.cloud_done_outlined,
            title: 'System Alerts',
            subtitle: 'Server status and application health',
            value: systemAlerts,
            onChanged: (value) {
              setState(() {
                systemAlerts = value;
              });
            },
          ),

          _NotificationTile(
            icon: Icons.security_outlined,
            title: 'Security Alerts',
            subtitle: 'Login activities and security events',
            value: securityAlerts,
            onChanged: (value) {
              setState(() {
                securityAlerts = value;
              });
            },
          ),

          const SizedBox(height: 24),

          FilledButton.icon(
            onPressed: _saveSettings,
            icon: const Icon(Icons.save),
            label: const Text('Save Settings'),
          ),
        ],
      ),
    );
  }

  void _saveSettings() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Notification settings saved successfully')),
    );
  }
}

class _SectionTitle extends StatelessWidget {
  final String title;

  const _SectionTitle({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Text(
        title,
        style: Theme.of(
          context,
        ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }
}

class _NotificationTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final bool value;
  final ValueChanged<bool> onChanged;

  const _NotificationTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      elevation: 0,

      margin: const EdgeInsets.only(bottom: 12),

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),

      child: SwitchListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),

        secondary: CircleAvatar(
          backgroundColor: colors.primaryContainer,
          child: Icon(icon, color: colors.primary),
        ),

        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),

        subtitle: Text(subtitle),

        value: value,

        onChanged: onChanged,
      ),
    );
  }
}
