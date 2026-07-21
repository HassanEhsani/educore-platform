// lib/features/admin/presentation/security/admin_two_factor_page.dart

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AdminTwoFactorPage extends StatefulWidget {
  const AdminTwoFactorPage({super.key});

  @override
  State<AdminTwoFactorPage> createState() => _AdminTwoFactorPageState();
}

class _AdminTwoFactorPageState extends State<AdminTwoFactorPage> {
  bool enabled = false;

  String selectedMethod = 'Authenticator App';

  final List<String> methods = ['Authenticator App', 'SMS Verification'];

  List<String> backupCodes = [
    'EDU-4829',
    'CORE-7391',
    'SAFE-6248',
    'AUTH-9135',
  ];

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

        title: const Text('Two Factor Authentication'),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [
          Card(
            elevation: 0,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),

            child: SwitchListTile(
              contentPadding: const EdgeInsets.all(18),

              secondary: const CircleAvatar(child: Icon(Icons.security)),

              title: const Text(
                'Enable 2FA',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),

              subtitle: Text(
                enabled
                    ? 'Your account is protected'
                    : 'Additional security is disabled',
              ),

              value: enabled,

              onChanged: (value) {
                setState(() {
                  enabled = value;
                });
              },
            ),
          ),

          const SizedBox(height: 24),

          Text(
            'Verification Method',

            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 12),

          Card(
            elevation: 0,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),

            child: RadioGroup<String>(
              groupValue: selectedMethod,

              onChanged: (value) {
                if (!enabled) {
                  return;
                }

                if (value == null) {
                  return;
                }

                setState(() {
                  selectedMethod = value;
                });
              },

              child: Column(
                children: methods.map((method) {
                  return RadioListTile<String>(
                    value: method,

                    title: Text(method),

                    enabled: enabled,
                  );
                }).toList(),
              ),
            ),
          ),

          const SizedBox(height: 24),

          Text(
            'Backup Codes',

            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 12),

          Card(
            elevation: 0,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),

            child: Padding(
              padding: const EdgeInsets.all(18),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  const Text(
                    'Use these codes if you lose access to your device.',
                  ),

                  const SizedBox(height: 16),

                  Wrap(
                    spacing: 10,
                    runSpacing: 10,

                    children: backupCodes.map((code) {
                      return Chip(label: Text(code));
                    }).toList(),
                  ),

                  const SizedBox(height: 16),

                  OutlinedButton.icon(
                    onPressed: enabled
                        ? () {
                            setState(() {
                              backupCodes = [
                                'NEW-4821',
                                'NEW-7395',
                                'NEW-6240',
                                'NEW-9138',
                              ];
                            });

                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text('Backup codes regenerated'),
                              ),
                            );
                          }
                        : null,

                    icon: const Icon(Icons.refresh),

                    label: const Text('Regenerate Codes'),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 30),

          FilledButton.icon(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    enabled
                        ? 'Two factor authentication enabled'
                        : 'Two factor authentication disabled',
                  ),
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
}
