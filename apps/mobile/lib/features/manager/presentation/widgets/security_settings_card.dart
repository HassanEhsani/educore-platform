import 'package:flutter/material.dart';

import '../../domain/entities/manager_settings.dart';

class SecuritySettingsCard extends StatelessWidget {
  final ManagerSettings settings;

  const SecuritySettingsCard({super.key, required this.settings});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.security_outlined),
            title: Text('Security'),
          ),

          SwitchListTile(
            title: const Text('Biometric Login'),
            value: settings.biometricEnabled,
            onChanged: null,
          ),

          SwitchListTile(
            title: const Text('Two Factor Authentication'),
            value: settings.twoFactorEnabled,
            onChanged: null,
          ),
        ],
      ),
    );
  }
}
