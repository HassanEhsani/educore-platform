// lib/features/admin/presentation/settings/admin_theme_page.dart

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AdminThemePage extends StatefulWidget {
  const AdminThemePage({super.key});

  @override
  State<AdminThemePage> createState() => _AdminThemePageState();
}

class _AdminThemePageState extends State<AdminThemePage> {
  String selectedTheme = 'System Default';

  final List<String> themes = ['System Default', 'Light', 'Dark'];

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

        title: const Text('Appearance'),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [
          Text(
            'Choose Theme',
            style: Theme.of(
              context,
            ).textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 16),

          RadioGroup<String>(
            groupValue: selectedTheme,

            onChanged: (value) {
              if (value == null) {
                return;
              }

              setState(() {
                selectedTheme = value;
              });
            },

            child: Column(
              children: themes.map((theme) {
                return Card(
                  elevation: 0,

                  margin: const EdgeInsets.only(bottom: 12),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18),
                  ),

                  child: RadioListTile<String>(
                    value: theme,

                    title: Text(theme),

                    subtitle: Text(_subtitle(theme)),

                    secondary: Icon(_icon(theme)),
                  ),
                );
              }).toList(),
            ),
          ),

          const SizedBox(height: 24),

          FilledButton.icon(
            onPressed: () {
              ScaffoldMessenger.of(
                context,
              ).showSnackBar(SnackBar(content: Text('$selectedTheme applied')));
            },

            icon: const Icon(Icons.check),

            label: const Text('Apply Theme'),
          ),
        ],
      ),
    );
  }

  String _subtitle(String theme) {
    switch (theme) {
      case 'Light':
        return 'Use light interface';

      case 'Dark':
        return 'Use dark interface';

      default:
        return 'Follow device settings';
    }
  }

  IconData _icon(String theme) {
    switch (theme) {
      case 'Light':
        return Icons.light_mode;

      case 'Dark':
        return Icons.dark_mode;

      default:
        return Icons.settings_brightness;
    }
  }
}
