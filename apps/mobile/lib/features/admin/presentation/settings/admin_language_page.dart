import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AdminLanguagePage extends StatelessWidget {
  const AdminLanguagePage({super.key});

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
        title: const Text('Language'),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),

        children: [
          _LanguageTile(
            title: 'English',
            subtitle: 'English language',
            selected: true,
            onTap: () {},
          ),

          _LanguageTile(
            title: 'فارسی',
            subtitle: 'Persian language',
            selected: false,
            onTap: () {},
          ),

          _LanguageTile(
            title: 'پښتو',
            subtitle: 'Pashto language',
            selected: false,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class _LanguageTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool selected;
  final VoidCallback onTap;

  const _LanguageTile({
    required this.title,
    required this.subtitle,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      elevation: 0,

      margin: const EdgeInsets.only(bottom: 12),

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),

      child: ListTile(
        onTap: onTap,

        leading: CircleAvatar(
          backgroundColor: colors.primaryContainer,

          child: Icon(Icons.language, color: colors.primary),
        ),

        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),

        subtitle: Text(subtitle),

        trailing: selected
            ? Icon(Icons.check_circle, color: colors.primary)
            : const Icon(Icons.radio_button_unchecked),
      ),
    );
  }
}
