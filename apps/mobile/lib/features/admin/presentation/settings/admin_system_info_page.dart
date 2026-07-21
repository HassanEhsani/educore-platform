// lib/features/admin/presentation/settings/admin_system_info_page.dart

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AdminSystemInfoPage extends StatelessWidget {
  const AdminSystemInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => context.pop(),
        ),
        title: const Text('System Information'),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [
          _SystemInfoCard(
            icon: Icons.apps,
            title: 'Application',
            items: const [
              SystemItem(label: 'Name', value: 'EduCore Platform'),
              SystemItem(label: 'Version', value: '1.0.0'),
              SystemItem(label: 'Environment', value: 'Production'),
            ],
          ),

          const SizedBox(height: 16),

          _SystemInfoCard(
            icon: Icons.storage,
            title: 'Server Status',
            items: const [
              SystemItem(label: 'API Status', value: 'Online'),
              SystemItem(label: 'Database', value: 'Connected'),
              SystemItem(label: 'Uptime', value: '99.9%'),
            ],
          ),

          const SizedBox(height: 16),

          _SystemInfoCard(
            icon: Icons.security,
            title: 'Security',
            items: const [
              SystemItem(label: 'Encryption', value: 'Enabled'),
              SystemItem(
                label: 'Two Factor Authentication',
                value: 'Available',
              ),
              SystemItem(label: 'Last Security Check', value: 'Today'),
            ],
          ),

          const SizedBox(height: 16),

          _SystemInfoCard(
            icon: Icons.info_outline,
            title: 'Technical Details',
            items: const [
              SystemItem(label: 'Framework', value: 'Flutter'),
              SystemItem(label: 'Platform', value: 'Mobile'),
              SystemItem(label: 'Build', value: 'Stable'),
            ],
          ),
        ],
      ),
    );
  }
}

class _SystemInfoCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final List<SystemItem> items;

  const _SystemInfoCard({
    required this.icon,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),

      child: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 22,
                  backgroundColor: colors.primaryContainer,
                  child: Icon(icon, color: colors.primary),
                ),

                const SizedBox(width: 12),

                Text(
                  title,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            ...items.map(
              (item) => Padding(
                padding: const EdgeInsets.only(bottom: 12),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,

                  children: [
                    Expanded(child: Text(item.label)),

                    const SizedBox(width: 16),

                    Flexible(
                      child: Text(
                        item.value,
                        textAlign: TextAlign.end,
                        style: const TextStyle(fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SystemItem {
  final String label;
  final String value;

  const SystemItem({required this.label, required this.value});
}
