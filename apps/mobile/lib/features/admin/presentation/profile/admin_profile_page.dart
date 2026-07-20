import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/fake_admin_data.dart';

class AdminProfilePage extends StatelessWidget {
  const AdminProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final admin = FakeAdminData.admin;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => context.go('/admin'),
        ),
        title: const Text('Profile'),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          _profileHeader(context, admin.name, admin.role, admin.email),

          const SizedBox(height: 24),

          Text(
            'Account Overview',
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 12),

          _infoCard(
            context,
            Icons.business,
            'Businesses',
            '${admin.totalBusinesses} Active Companies',
          ),

          _infoCard(
            context,
            Icons.people,
            'Users',
            '${admin.totalUsers} Registered Users',
          ),

          _infoCard(context, Icons.verified_user, 'Permission', admin.role),

          _infoCard(context, Icons.badge, 'Admin ID', admin.id),

          const SizedBox(height: 24),

          Text(
            'Security',
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 12),

          _actionCard(
            context,
            Icons.lock_outline,
            'Change Password',
            'Update account security',
          ),

          _actionCard(
            context,
            Icons.devices,
            'Active Sessions',
            'Manage logged in devices',
          ),

          const SizedBox(height: 24),

          FilledButton.icon(
            style: FilledButton.styleFrom(
              minimumSize: const Size(double.infinity, 52),
            ),
            onPressed: () {},
            icon: const Icon(Icons.edit),
            label: const Text('Edit Profile'),
          ),

          const SizedBox(height: 12),

          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              minimumSize: const Size(double.infinity, 52),
            ),
            onPressed: () {},
            icon: const Icon(Icons.logout),
            label: const Text('Logout'),
          ),
        ],
      ),
    );
  }

  Widget _profileHeader(
    BuildContext context,
    String name,
    String role,
    String email,
  ) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        color: colors.primaryContainer,
        borderRadius: BorderRadius.circular(24),
      ),

      child: Column(
        children: [
          CircleAvatar(
            radius: 48,
            backgroundColor: colors.primary,
            child: Text(
              name.substring(0, 1).toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 16),

          Text(
            name,
            style: Theme.of(
              context,
            ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 6),

          Text(role),

          const SizedBox(height: 4),

          Text(email, style: Theme.of(context).textTheme.bodySmall),
        ],
      ),
    );
  }

  Widget _infoCard(
    BuildContext context,
    IconData icon,
    String title,
    String value,
  ) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),

      child: ListTile(
        leading: CircleAvatar(child: Icon(icon)),

        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),

        subtitle: Text(value),
      ),
    );
  }

  Widget _actionCard(
    BuildContext context,
    IconData icon,
    String title,
    String subtitle,
  ) {
    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),

      child: ListTile(
        leading: Icon(icon),

        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),

        subtitle: Text(subtitle),

        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }
}
