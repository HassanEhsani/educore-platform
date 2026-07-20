// lib/features/admin/presentation/widgets/admin_growth_card.dart

import 'package:flutter/material.dart';

class AdminGrowthCard extends StatelessWidget {
  final double growth;

  const AdminGrowthCard({super.key, required this.growth});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(24)),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                color: colors.primaryContainer,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Icon(Icons.trending_up, color: colors.primary),
            ),

            const SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'User Growth',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 6),

                  Text(
                    'Monthly user increase',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),

                  const SizedBox(height: 10),

                  Row(
                    children: [
                      Icon(Icons.arrow_upward, size: 16, color: colors.primary),

                      const SizedBox(width: 4),

                      Text(
                        '${growth.toStringAsFixed(1)}%',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: colors.primary,
                        ),
                      ),

                      const SizedBox(width: 6),

                      Text(
                        'this month',
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ],
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
