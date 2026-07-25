import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LogoutSettingsCard extends StatelessWidget {
  const LogoutSettingsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: colors.errorContainer,
          child: Icon(Icons.logout_rounded, color: colors.error),
        ),
        title: Text(
          'Logout',
          style: TextStyle(fontWeight: FontWeight.w600, color: colors.error),
        ),
        subtitle: const Text('Sign out from your account'),
        trailing: const Icon(Icons.chevron_right),
        onTap: () => _showLogoutDialog(context),
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          icon: const Icon(Icons.logout_rounded),
          title: const Text('Logout'),
          content: const Text(
            'Are you sure you want to sign out from your account?',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(dialogContext).pop();
              },
              child: const Text('Cancel'),
            ),
            FilledButton(
              onPressed: () {
                Navigator.of(dialogContext).pop();

                // TODO(Hassan):
                // Remove authentication token and user session
                // when backend authentication is implemented.

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
