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

      child: Padding(
        padding: const EdgeInsets.all(14),

        child: Row(
          children: [
            Container(
              width: 48,

              height: 48,

              decoration: BoxDecoration(
                color: colors.primaryContainer,

                borderRadius: BorderRadius.circular(16),
              ),

              child: Icon(icon, color: colors.primary),
            ),

            const SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    title,

                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 4),

                  Text(subtitle),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
