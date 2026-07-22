// lib/features/admin/presentation/widgets/admin_growth_card.dart

import 'package:flutter/material.dart';

class AdminGrowthCard extends StatelessWidget {
  final double growth;

  const AdminGrowthCard({super.key, required this.growth});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final formattedGrowth = growth.toStringAsFixed(1);

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

                  const SizedBox(height: 12),

                  Row(
                    children: [
                      Icon(
                        growth >= 0 ? Icons.arrow_upward : Icons.arrow_downward,
                        size: 16,
                        color: growth >= 0 ? colors.primary : colors.error,
                      ),

                      const SizedBox(width: 4),

                      Text(
                        '$formattedGrowth%',
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: growth >= 0 ? colors.primary : colors.error,
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
