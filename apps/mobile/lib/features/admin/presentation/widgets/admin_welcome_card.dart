import 'package:flutter/material.dart';

import '../../domain/admin.dart';

class AdminWelcomeCard extends StatelessWidget {
  final Admin admin;

  const AdminWelcomeCard({super.key, required this.admin});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      elevation: 0,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),

      child: Container(
        width: double.infinity,

        padding: const EdgeInsets.all(24),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),

          color: colors.primaryContainer,
        ),

        child: Row(
          children: [
            CircleAvatar(
              radius: 32,

              backgroundColor: colors.primary,

              child: Text(
                admin.name.substring(0, 1).toUpperCase(),

                style: const TextStyle(
                  color: Colors.white,

                  fontSize: 26,

                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    'Welcome back',

                    style: Theme.of(context).textTheme.bodyMedium,
                  ),

                  Text(
                    admin.name,

                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 4),

                  const Text('Administrator Dashboard'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
