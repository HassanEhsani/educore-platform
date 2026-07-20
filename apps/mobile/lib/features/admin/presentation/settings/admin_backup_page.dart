// lib/features/admin/presentation/settings/admin_backup_page.dart

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AdminBackupPage extends StatefulWidget {
  const AdminBackupPage({super.key});

  @override
  State<AdminBackupPage> createState() => _AdminBackupPageState();
}

class _AdminBackupPageState extends State<AdminBackupPage> {
  bool automaticBackup = true;

  String backupFrequency = 'Every Night';

  final List<String> frequencies = const [
    'Every Day',
    'Every Night',
    'Every Week',
    'Every Month',
  ];

  DateTime? lastBackup = DateTime(2026, 7, 20, 2, 30);

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
        title: const Text('Backup Settings'),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [
          _BackupCard(
            child: SwitchListTile(
              contentPadding: const EdgeInsets.all(18),

              secondary: const CircleAvatar(child: Icon(Icons.backup)),

              title: const Text(
                'Automatic Backup',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              subtitle: const Text('Automatically backup system data'),

              value: automaticBackup,

              onChanged: (value) {
                setState(() {
                  automaticBackup = value;
                });
              },
            ),
          ),

          const SizedBox(height: 24),

          Text(
            'Backup Frequency',
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 12),

          _BackupCard(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: backupFrequency,

                  isExpanded: true,

                  items: frequencies
                      .map(
                        (frequency) => DropdownMenuItem<String>(
                          value: frequency,
                          child: Text(frequency),
                        ),
                      )
                      .toList(),

                  onChanged: (value) {
                    if (value == null) {
                      return;
                    }

                    setState(() {
                      backupFrequency = value;
                    });
                  },
                ),
              ),
            ),
          ),

          const SizedBox(height: 24),

          _BackupCard(
            child: ListTile(
              contentPadding: const EdgeInsets.all(18),

              leading: const CircleAvatar(child: Icon(Icons.history)),

              title: const Text(
                'Last Backup',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              subtitle: Text(_formatDate(lastBackup)),

              trailing: IconButton(
                icon: const Icon(Icons.refresh),

                onPressed: () {
                  setState(() {
                    lastBackup = DateTime.now();
                  });

                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Backup completed successfully'),
                    ),
                  );
                },
              ),
            ),
          ),

          const SizedBox(height: 24),

          FilledButton.icon(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Backup settings saved successfully'),
                ),
              );
            },

            icon: const Icon(Icons.save),

            label: const Text('Save Settings'),
          ),
        ],
      ),
    );
  }

  String _formatDate(DateTime? date) {
    if (date == null) {
      return 'No backup available';
    }

    final year = date.year;
    final month = date.month.toString().padLeft(2, '0');
    final day = date.day.toString().padLeft(2, '0');

    final hour = date.hour.toString().padLeft(2, '0');
    final minute = date.minute.toString().padLeft(2, '0');

    return '$year-$month-$day $hour:$minute';
  }
}

class _BackupCard extends StatelessWidget {
  final Widget child;

  const _BackupCard({required this.child});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

      child: child,
    );
  }
}
