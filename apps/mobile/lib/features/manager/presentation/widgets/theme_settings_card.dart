import 'package:flutter/material.dart';

import '../../../../core/theme/theme_controller.dart';

class ThemeSettingsCard extends StatefulWidget {
  const ThemeSettingsCard({super.key});

  @override
  State<ThemeSettingsCard> createState() => _ThemeSettingsCardState();
}

class _ThemeSettingsCardState extends State<ThemeSettingsCard> {
  String selectedTheme = 'System Default';

  final List<String> themes = ['System Default', 'Light', 'Dark'];

  @override
  void initState() {
    super.initState();

    selectedTheme = _currentThemeName();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: const Icon(Icons.dark_mode_outlined),

            title: const Text('Appearance'),

            subtitle: Text(selectedTheme),
          ),

          RadioGroup<String>(
            groupValue: selectedTheme,

            onChanged: (value) {
              if (value == null) {
                return;
              }

              setState(() {
                selectedTheme = value;
              });

              _applyTheme(value);
            },

            child: Column(
              children: themes.map((theme) {
                return RadioListTile<String>(
                  value: theme,

                  title: Text(theme),

                  subtitle: Text(_subtitle(theme)),

                  secondary: Icon(_icon(theme)),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }

  void _applyTheme(String theme) {
    switch (theme) {
      case 'Light':
        themeController.setLightMode();
        break;

      case 'Dark':
        themeController.setDarkMode();
        break;

      default:
        themeController.setSystemMode();
    }
  }

  String _currentThemeName() {
    switch (themeController.themeMode) {
      case ThemeMode.light:
        return 'Light';

      case ThemeMode.dark:
        return 'Dark';

      default:
        return 'System Default';
    }
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
