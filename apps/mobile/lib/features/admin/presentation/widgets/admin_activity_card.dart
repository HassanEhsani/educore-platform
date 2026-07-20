// lib/features/admin/presentation/widgets/admin_activity_card.dart

import 'package:flutter/material.dart';

class AdminActivityCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const AdminActivityCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: CircleAvatar(child: Icon(icon)),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
      ),
    );
  }
}
