// lib/features/admin/presentation/security/admin_security_activity_page.dart

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AdminSecurityActivityPage extends StatelessWidget {
  const AdminSecurityActivityPage({super.key});

  static const List<_SecurityActivity> _activities = [
    _SecurityActivity(
      icon: Icons.login,
      title: 'Successful Login',
      description: 'Admin account logged in successfully',
      device: 'iPhone 17',
      location: 'Kabul, Afghanistan',
      time: 'Today, 10:32 AM',
      status: 'Success',
    ),
    _SecurityActivity(
      icon: Icons.password,
      title: 'Password Changed',
      description: 'Account password was updated',
      device: 'MacBook Pro',
      location: 'Kabul, Afghanistan',
      time: 'Yesterday, 08:15 PM',
      status: 'Success',
    ),
    _SecurityActivity(
      icon: Icons.security,
      title: 'Two Factor Authentication Enabled',
      description: 'Additional security layer activated',
      device: 'iPhone 17',
      location: 'Kabul, Afghanistan',
      time: '2 days ago',
      status: 'Success',
    ),
    _SecurityActivity(
      icon: Icons.warning_amber,
      title: 'Failed Login Attempt',
      description: 'Incorrect password entered',
      device: 'Unknown Device',
      location: 'Unknown Location',
      time: '5 days ago',
      status: 'Warning',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            context.pop();
          },
        ),
        title: const Text('Security Activity'),
      ),

      body: ListView.separated(
        padding: const EdgeInsets.all(20),

        itemCount: _activities.length,

        separatorBuilder: (_, _) => const SizedBox(height: 12),

        itemBuilder: (context, index) {
          final activity = _activities[index];

          return _ActivityCard(activity: activity);
        },
      ),
    );
  }
}

class _ActivityCard extends StatelessWidget {
  final _SecurityActivity activity;

  const _ActivityCard({required this.activity});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final isWarning = activity.status == 'Warning';

    return Card(
      elevation: 0,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),

      child: Padding(
        padding: const EdgeInsets.all(18),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            CircleAvatar(
              backgroundColor: isWarning
                  ? colors.errorContainer
                  : colors.primaryContainer,

              child: Icon(
                activity.icon,
                color: isWarning ? colors.error : colors.primary,
              ),
            ),

            const SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    activity.title,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 6),

                  Text(activity.description),

                  const SizedBox(height: 10),

                  _InfoRow(icon: Icons.devices, text: activity.device),

                  const SizedBox(height: 4),

                  _InfoRow(
                    icon: Icons.location_on_outlined,
                    text: activity.location,
                  ),

                  const SizedBox(height: 4),

                  _InfoRow(icon: Icons.access_time, text: activity.time),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;
  final String text;

  const _InfoRow({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, size: 15),

        const SizedBox(width: 6),

        Expanded(
          child: Text(text, style: Theme.of(context).textTheme.bodySmall),
        ),
      ],
    );
  }
}

class _SecurityActivity {
  final IconData icon;
  final String title;
  final String description;
  final String device;
  final String location;
  final String time;
  final String status;

  const _SecurityActivity({
    required this.icon,
    required this.title,
    required this.description,
    required this.device,
    required this.location,
    required this.time,
    required this.status,
  });
}
