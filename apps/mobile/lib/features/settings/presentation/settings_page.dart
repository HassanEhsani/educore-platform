import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => context.pop(),
        ),
      ),
      body: ListView(
        children: [
          const ListTile(
            leading: Icon(Icons.language),
            title: Text('Language'),
          ),
          const Divider(height: 1),
          const ListTile(leading: Icon(Icons.dark_mode), title: Text('Theme')),
          const Divider(height: 1),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () => context.go('/'),
          ),
        ],
      ),
    );
  }
}
