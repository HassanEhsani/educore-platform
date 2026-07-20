import 'package:flutter/material.dart';

import '../../domain/admin.dart';

class AdminHeader extends StatelessWidget {
  final Admin admin;

  const AdminHeader({super.key, required this.admin});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            CircleAvatar(
              radius: 28,
              child: Text(
                admin.name.isNotEmpty ? admin.name[0].toUpperCase() : 'A',
              ),
            ),

            const SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    admin.name,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 4),

                  Text(
                    admin.role,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),

                  const SizedBox(height: 4),

                  Text(
                    admin.email,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
