import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../providers/manager_settings_provider.dart';

import '../../domain/entities/manager_settings.dart';

class ManagerProfilePage extends ConsumerWidget {
  const ManagerProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final settingsState = ref.watch(managerSettingsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Manager Profile'),

        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),

          onPressed: () {
            context.go('/manager');
          },
        ),
      ),

      body: settingsState.when(
        loading: () {
          return const Center(child: CircularProgressIndicator());
        },

        error: (error, stack) {
          return Center(child: Text(error.toString()));
        },

        data: (settings) {
          return SingleChildScrollView(
            padding: const EdgeInsets.all(20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                _profileHeader(context, settings),

                const SizedBox(height: 24),

                _sectionTitle(context, 'Account Information'),

                _infoCard(Icons.email_outlined, 'Email', settings.email),

                _infoCard(Icons.phone_outlined, 'Phone', settings.phoneNumber),

                _infoCard(
                  Icons.badge_outlined,
                  'Manager ID',
                  settings.managerId,
                ),

                const SizedBox(height: 24),

                _sectionTitle(context, 'School Information'),

                _infoCard(Icons.school_outlined, 'School', settings.schoolName),

                _infoCard(
                  Icons.location_on_outlined,
                  'Address',
                  settings.schoolAddress,
                ),

                const SizedBox(height: 24),

                _sectionTitle(context, 'Account Status'),

                _statusCard(
                  Icons.security,
                  'Two Factor Authentication',
                  settings.twoFactorEnabled ? 'Enabled' : 'Disabled',
                ),

                _statusCard(
                  Icons.notifications,
                  'Notifications',
                  settings.notificationsEnabled ? 'Enabled' : 'Disabled',
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

                  onPressed: () {
                    context.push('/manager/settings');
                  },

                  icon: const Icon(Icons.settings),

                  label: const Text('Settings'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _profileHeader(BuildContext context, ManagerSettings settings) {
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
            radius: 45,

            child: Text(
              settings.managerName.substring(0, 1).toUpperCase(),

              style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
          ),

          const SizedBox(height: 16),

          Text(
            settings.managerName,

            style: Theme.of(
              context,
            ).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 6),

          const Text('School Manager'),

          Text(settings.email),
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

  Widget _infoCard(IconData icon, String title, String value) {
    return Card(
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

  Widget _statusCard(IconData icon, String title, String value) {
    return Card(
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
}
