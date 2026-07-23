import 'package:flutter/material.dart';

import '../../domain/entities/manager_settings.dart';

class AccountSettingsCard extends StatelessWidget {
  final ManagerSettings settings;

  const AccountSettingsCard({super.key, required this.settings});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.person_outline),
            title: Text('Account'),
          ),

          ListTile(
            title: Text(settings.managerName),
            subtitle: Text(settings.email),
          ),

          ListTile(
            leading: const Icon(Icons.phone_outlined),
            title: Text(settings.phoneNumber),
          ),
        ],
      ),
    );
  }
}
