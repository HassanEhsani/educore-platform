// lib/features/admin/presentation/settings/admin_settings_page.dart

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AdminSettingsPage extends StatelessWidget {
  const AdminSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => context.go('/admin'),
        ),
        title: const Text('Settings'),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [
          _sectionTitle(context, 'Application'),

          _SettingTile(
            icon: Icons.language,
            title: 'Language',
            subtitle: 'English',
            onTap: () {
              context.push('/admin/settings/language');
            },
          ),

          _SettingTile(
            icon: Icons.dark_mode,
            title: 'Appearance',
            subtitle: 'System Default',
            onTap: () {
              context.push('/admin/settings/theme');
            },
          ),

          const SizedBox(height: 24),

          _sectionTitle(context, 'Account & Security'),

          _SettingTile(
            icon: Icons.notifications,
            title: 'Notifications',
            subtitle: 'Enabled',
            onTap: () {
              context.push('/admin/settings/notifications');
            },
          ),

          _SettingTile(
            icon: Icons.security,
            title: 'Security',
            subtitle: 'Password & Two Factor Authentication',
            onTap: () {
              context.push('/admin/security');
            },
          ),

          _SettingTile(
            icon: Icons.person,
            title: 'Account Settings',
            subtitle: 'Profile information',
            onTap: () {
              context.push('/admin/profile/edit');
            },
          ),

          const SizedBox(height: 24),

          _sectionTitle(context, 'System'),

          _SettingTile(
            icon: Icons.backup,
            title: 'Automatic Backup',
            subtitle: 'Every Night',
            onTap: () {
              context.push('/admin/settings/backup');
            },
          ),

          _SettingTile(
            icon: Icons.storage,
            title: 'System Information',
            subtitle: 'Version and diagnostics',
            onTap: () {
              context.push('/admin/settings/system-info');
            },
          ),

          const SizedBox(height: 24),

          _SettingTile(
            icon: Icons.logout,
            title: 'Logout',
            subtitle: 'Sign out from account',
            danger: true,
            onTap: () {
              _showLogoutDialog(context);
            },
          ),
        ],
      ),
    );
  }

  Widget _sectionTitle(BuildContext context, String title) {
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

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: const Text('Logout'),
          content: const Text('Are you sure you want to logout?'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(dialogContext);
              },
              child: const Text('Cancel'),
            ),

            FilledButton(
              onPressed: () {
                Navigator.pop(dialogContext);
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

class _SettingTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap;
  final bool danger;

  const _SettingTile({
    required this.icon,
    required this.title,
    required this.subtitle,
    required this.onTap,
    this.danger = false,
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
          backgroundColor: danger
              ? colors.errorContainer
              : colors.primaryContainer,

          child: Icon(icon, color: danger ? colors.error : colors.primary),
        ),

        title: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            color: danger ? colors.error : null,
          ),
        ),

        subtitle: Text(subtitle),

        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
