import 'package:flutter/material.dart';

import '../../domain/entities/manager_settings.dart';

class LanguageSettingsCard extends StatelessWidget {
  final ManagerSettings settings;

  const LanguageSettingsCard({super.key, required this.settings});

  String _languageName(AppLanguage language) {
    switch (language) {
      case AppLanguage.english:
        return 'English';

      case AppLanguage.persian:
        return 'Persian';

      case AppLanguage.pashto:
        return 'Pashto';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.language_outlined),

        title: const Text('Language'),

        subtitle: Text(_languageName(settings.language)),
      ),
    );
  }
}
