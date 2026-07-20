// lib/features/manager/presentation/widgets/recent_activity_card.dart

import 'package:flutter/material.dart';

class RecentActivityCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const RecentActivityCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      elevation: 0,
      margin: const EdgeInsets.only(bottom: 12),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(14),

        leading: CircleAvatar(
          radius: 24,
          backgroundColor: colors.primaryContainer,
          child: Icon(icon, color: colors.primary),
        ),

        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),

        subtitle: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text(subtitle),
        ),
      ),
    );
  }
}
