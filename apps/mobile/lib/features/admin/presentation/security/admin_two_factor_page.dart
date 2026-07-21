// lib/features/admin/presentation/security/admin_two_factor_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../providers/admin_security_provider.dart';

class AdminTwoFactorPage extends ConsumerWidget {
  const AdminTwoFactorPage({super.key});

  static const List<String> methods = ['Authenticator App', 'SMS Verification'];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final security = ref.watch(adminSecurityProvider);
    final controller = ref.read(adminSecurityProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => context.pop(),
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
                security.twoFactorEnabled
                    ? 'Your account is protected'
                    : 'Additional security is disabled',
              ),
              value: security.twoFactorEnabled,
              onChanged: controller.toggleTwoFactor,
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
            child: Column(
              children: methods.map((method) {
                return RadioListTile<String>(
                  value: method,
                  groupValue: security.twoFactorMethod,
                  title: Text(method),
                  onChanged: security.twoFactorEnabled
                      ? (String? value) {
                          if (value == null) {
                            return;
                          }

                          controller.changeTwoFactorMethod(value);
                        }
                      : null,
                );
              }).toList(),
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
                    children: security.backupCodes
                        .map((code) => Chip(label: Text(code)))
                        .toList(),
                  ),

                  const SizedBox(height: 16),

                  OutlinedButton.icon(
                    onPressed: security.twoFactorEnabled
                        ? controller.regenerateBackupCodes
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
                    security.twoFactorEnabled
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
