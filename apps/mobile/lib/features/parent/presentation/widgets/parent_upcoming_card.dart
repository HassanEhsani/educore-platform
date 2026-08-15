import 'package:flutter/material.dart';

class ParentUpcomingCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const ParentUpcomingCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      child: ListTile(
        leading: Container(
          height: 45,
          width: 45,

          decoration: BoxDecoration(
            color: colors.primary.withOpacity(.12),

            borderRadius: BorderRadius.circular(14),
          ),

          child: Icon(icon, color: colors.primary),
        ),

        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),

        subtitle: Text(subtitle),
      ),
    );
  }
}
