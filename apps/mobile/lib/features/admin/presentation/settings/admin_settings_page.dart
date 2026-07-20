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
        children: const [
          _SettingTile(
            icon: Icons.language,
            title: 'Language',
            subtitle: 'English',
          ),
          _SettingTile(
            icon: Icons.dark_mode,
            title: 'Dark Mode',
            subtitle: 'System',
          ),
          _SettingTile(
            icon: Icons.notifications,
            title: 'Notifications',
            subtitle: 'Enabled',
          ),
          _SettingTile(
            icon: Icons.security,
            title: 'Security',
            subtitle: 'Password & 2FA',
          ),
          _SettingTile(
            icon: Icons.backup,
            title: 'Automatic Backup',
            subtitle: 'Every Night',
          ),
          _SettingTile(
            icon: Icons.logout,
            title: 'Logout',
            subtitle: 'Sign out from account',
          ),
        ],
      ),
    );
  }
}

class _SettingTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const _SettingTile({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Icon(icon),
        title: Text(title),
        subtitle: Text(subtitle),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
