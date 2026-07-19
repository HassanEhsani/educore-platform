import 'package:flutter/material.dart';

class LanguageSelector extends StatelessWidget {
  final String value;
  final ValueChanged<String?> onChanged;

  const LanguageSelector({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      initialValue: value,
      decoration: const InputDecoration(
        labelText: 'Language',
        border: OutlineInputBorder(),
        prefixIcon: Icon(Icons.language),
      ),
      items: const [
        DropdownMenuItem(value: 'en', child: Text('English')),
        DropdownMenuItem(value: 'fa', child: Text('فارسی')),
        DropdownMenuItem(value: 'ps', child: Text('پښتو')),
      ],
      onChanged: onChanged,
    );
  }
}
