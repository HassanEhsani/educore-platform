// lib/features/admin/presentation/widgets/admin_header.dart

import 'package:flutter/material.dart';

import '../../domain/admin.dart';

class AdminHeader extends StatelessWidget {
  final Admin admin;

  const AdminHeader({super.key, required this.admin});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 34,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.admin_panel_settings,
              size: 36,
              color: Theme.of(context).colorScheme.primary,
            ),
          ),

          const SizedBox(width: 16),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome ${admin.name} 👋',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 6),

                Text(admin.role, style: const TextStyle(color: Colors.white70)),

                const SizedBox(height: 4),

                Text(
                  admin.email,
                  style: const TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
