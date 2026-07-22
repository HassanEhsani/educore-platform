import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../data/fake_admin_data.dart';
import '../../domain/admin.dart';

class AdminProfilePage extends StatelessWidget {
  const AdminProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final admin = FakeAdminData.admin;
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => context.go('/admin'),
        ),
        title: const Text('Business Owner Profile'),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            _profileHeader(context, admin),

            const SizedBox(height: 20),

            _dashboardCard(
              context,

              child: Row(
                children: [
                  Expanded(
                    child: _miniStat(
                      Icons.business,
                      '${admin.totalBusinesses}',
                      'Businesses',
                    ),
                  ),

                  Expanded(
                    child: _miniStat(
                      Icons.people,
                      '${admin.totalUsers}',
                      'Users',
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            _sectionTitle(context, 'Account Information'),

            _infoCard(context, Icons.email_outlined, 'Email', admin.email),

            _infoCard(context, Icons.phone_outlined, 'Phone', admin.phone),

            _infoCard(context, Icons.badge_outlined, 'Merchant ID', admin.id),

            _infoCard(
              context,
              Icons.workspace_premium_outlined,
              'Role',
              admin.role,
            ),

            _infoCard(
              context,
              Icons.calendar_month_outlined,
              'Created',
              admin.createdAt,
            ),

            const SizedBox(height: 20),

            _sectionTitle(context, 'Account Status'),

            _dashboardCard(
              context,

              child: _statusRow(
                context,
                Icons.check_circle_outline,
                'Status',
                admin.accountStatus,
                colors.primary,
              ),
            ),

            const SizedBox(height: 20),

            _sectionTitle(context, 'Business Access'),

            _dashboardCard(
              context,

              child: Wrap(
                spacing: 8,
                runSpacing: 8,

                children: [
                  _permissionChip('School Management'),

                  _permissionChip('ISP Management'),

                  _permissionChip('Laboratory Management'),

                  _permissionChip('Financial Reports'),
                ],
              ),
            ),

            const SizedBox(height: 20),

            _sectionTitle(context, 'Recent Activity'),

            _activityCard(context, Icons.edit, 'Profile reviewed', 'Today'),

            _activityCard(
              context,
              Icons.business,
              'Business dashboard accessed',
              'Yesterday',
            ),

            const SizedBox(height: 24),

            FilledButton.icon(
              style: FilledButton.styleFrom(
                minimumSize: const Size(double.infinity, 52),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),

              onPressed: () {
                context.push('/admin/profile/edit');
              },

              icon: const Icon(Icons.edit),

              label: const Text('Edit Profile'),
            ),

            const SizedBox(height: 12),

            OutlinedButton.icon(
              style: OutlinedButton.styleFrom(
                minimumSize: const Size(double.infinity, 52),

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),

              onPressed: () {
                context.push('/admin/security');
              },

              icon: const Icon(Icons.lock_outline),

              label: const Text('Security Settings'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _profileHeader(BuildContext context, Admin admin) {
    final colors = Theme.of(context).colorScheme;

    return Container(
      width: double.infinity,

      padding: const EdgeInsets.all(24),

      decoration: BoxDecoration(
        color: colors.primaryContainer,

        borderRadius: BorderRadius.circular(24),
      ),

      child: Column(
        children: [
          CircleAvatar(
            radius: 42,

            backgroundColor: colors.primary,

            child: Text(
              admin.name.substring(0, 1).toUpperCase(),

              style: TextStyle(
                color: colors.onPrimary,

                fontSize: 32,

                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 16),

          Text(
            admin.name,

            style: Theme.of(
              context,
            ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 6),

          Text(admin.role),

          Text(admin.email),
        ],
      ),
    );
  }

  Widget _dashboardCard(BuildContext context, {required Widget child}) {
    return Card(
      elevation: 0,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),

      child: Padding(padding: const EdgeInsets.all(18), child: child),
    );
  }

  Widget _miniStat(IconData icon, String value, String label) {
    return Column(
      children: [
        Icon(icon),

        const SizedBox(height: 8),

        Text(
          value,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),

        Text(label),
      ],
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

  Widget _infoCard(
    BuildContext context,
    IconData icon,
    String title,
    String value,
  ) {
    return Card(
      elevation: 0,

      margin: const EdgeInsets.only(bottom: 10),

      child: ListTile(
        leading: Icon(icon),

        title: Text(title),

        trailing: Text(
          value,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _statusRow(
    BuildContext context,
    IconData icon,
    String title,
    String value,
    Color color,
  ) {
    return ListTile(
      contentPadding: EdgeInsets.zero,

      leading: Icon(icon, color: color),

      title: Text(title),

      trailing: Text(
        value,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _permissionChip(String text) {
    return Chip(avatar: const Icon(Icons.check, size: 18), label: Text(text));
  }

  Widget _activityCard(
    BuildContext context,
    IconData icon,
    String title,
    String subtitle,
  ) {
    return Card(
      elevation: 0,

      margin: const EdgeInsets.only(bottom: 10),

      child: ListTile(
        leading: Icon(icon),

        title: Text(title),

        subtitle: Text(subtitle),
      ),
    );
  }
}
