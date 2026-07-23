import 'package:flutter/material.dart';

import '../../domain/entities/manager_settings.dart';

class ProfileCard extends StatelessWidget {
  final ManagerSettings settings;

  const ProfileCard({super.key, required this.settings});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,

      child: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 38,

                  backgroundImage: settings.schoolLogo.isNotEmpty
                      ? NetworkImage(settings.schoolLogo)
                      : null,

                  child: settings.schoolLogo.isEmpty
                      ? const Icon(Icons.person, size: 40)
                      : null,
                ),

                const SizedBox(width: 16),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      Text(
                        settings.managerName,

                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 6),

                      const Text('School Manager'),
                    ],
                  ),
                ),

                IconButton(
                  icon: const Icon(Icons.edit_outlined),

                  onPressed: () {},
                ),
              ],
            ),

            const Divider(height: 32),

            _InfoRow(
              icon: Icons.email_outlined,

              title: 'Email',

              value: settings.email,
            ),

            _InfoRow(
              icon: Icons.phone_outlined,

              title: 'Phone',

              value: settings.phoneNumber,
            ),

            _InfoRow(
              icon: Icons.badge_outlined,

              title: 'Manager ID',

              value: settings.managerId,
            ),
          ],
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  final IconData icon;

  final String title;

  final String value;

  const _InfoRow({
    required this.icon,

    required this.title,

    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),

      child: Row(
        children: [
          Icon(icon),

          const SizedBox(width: 12),

          Text('$title:', style: const TextStyle(fontWeight: FontWeight.bold)),

          const SizedBox(width: 8),

          Expanded(child: Text(value)),
        ],
      ),
    );
  }
}
