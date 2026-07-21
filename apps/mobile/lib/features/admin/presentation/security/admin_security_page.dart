// lib/features/admin/presentation/security/admin_security_page.dart

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AdminSecurityPage extends StatelessWidget {
  const AdminSecurityPage({super.key});

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
        title: const Text('Security'),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [
          _SecurityCard(
            icon: Icons.lock_outline,
            title: 'Change Password',
            subtitle: 'Update your account password',
            onTap: () {
              context.push('/admin/security/change-password');
            },
          ),

          _SecurityCard(
            icon: Icons.security,
            title: 'Two Factor Authentication',
            subtitle: 'Enable additional account protection',
            onTap: () {
              context.push('/admin/security/two-factor');
            },
          ),

          _SecurityCard(
            icon: Icons.devices,
            title: 'Active Sessions',
            subtitle: 'Manage connected devices and login activity',
            onTap: () {
              context.push('/admin/security/activity');
            },
          ),

          const SizedBox(height: 24),

          FilledButton.icon(
            style: FilledButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.error,
            ),

            onPressed: () {
              _showLogoutDialog(context);
            },

            icon: const Icon(Icons.logout),

            label: const Text('Logout'),
          ),
        ],
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,

      builder: (context) {
        return AlertDialog(
          title: const Text('Logout'),

          content: const Text('Are you sure you want to logout?'),

          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },

              child: const Text('Cancel'),
            ),

            FilledButton(
              onPressed: () {
                Navigator.pop(context);
                context.go('/');
              },

              child: const Text('Logout'),
            ),
          ],
        );
      },
    );
  }
}

class _SecurityCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;

  const _SecurityCard({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      elevation: 0,

      margin: const EdgeInsets.only(bottom: 12),

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),

      child: ListTile(
        onTap: onTap,

        contentPadding: const EdgeInsets.symmetric(horizontal: 18, vertical: 8),

        leading: CircleAvatar(
          backgroundColor: colors.primaryContainer,

          child: Icon(icon, color: colors.primary),
        ),

        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),

        subtitle: Text(subtitle),

        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }
}
