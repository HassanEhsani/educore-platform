import 'package:flutter/material.dart';

class ParentChildCard extends StatelessWidget {
  final String title;

  final String subtitle;

  final IconData icon;

  final VoidCallback? onTap;

  const ParentChildCard({
    super.key,

    required this.title,

    required this.subtitle,

    required this.icon,

    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Card(
      elevation: 0,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

      child: ListTile(
        contentPadding: const EdgeInsets.all(14),

        leading: Container(
          height: 50,

          width: 50,

          decoration: BoxDecoration(
            color: colorScheme.primary.withOpacity(.12),

            borderRadius: BorderRadius.circular(16),
          ),

          child: Icon(icon, color: colorScheme.primary),
        ),

        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),

        subtitle: Text(subtitle),

        trailing: const Icon(Icons.arrow_forward_ios, size: 16),

        onTap: onTap,
      ),
    );
  }
}
