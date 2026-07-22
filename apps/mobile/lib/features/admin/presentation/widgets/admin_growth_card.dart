import 'package:flutter/material.dart';

class AdminGrowthCard extends StatelessWidget {
  final double growth;
  final String title;
  final String description;

  const AdminGrowthCard({
    super.key,
    required this.growth,
    this.title = 'Business Growth',
    this.description = 'Revenue performance compared to last month',
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    final bool isPositive = growth >= 0;
    final Color trendColor = isPositive ? colors.primary : colors.error;

    final String formattedGrowth = growth.abs().toStringAsFixed(1);

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
              child: Icon(
                isPositive ? Icons.trending_up : Icons.trending_down,
                color: trendColor,
              ),
            ),

            const SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: theme.textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 6),

                  Text(description, style: theme.textTheme.bodySmall),

                  const SizedBox(height: 12),

                  Row(
                    children: [
                      Icon(
                        isPositive ? Icons.arrow_upward : Icons.arrow_downward,
                        size: 16,
                        color: trendColor,
                      ),

                      const SizedBox(width: 4),

                      Text(
                        '$formattedGrowth%',
                        style: theme.textTheme.titleLarge?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: trendColor,
                        ),
                      ),

                      const SizedBox(width: 6),

                      Text('vs last month', style: theme.textTheme.bodySmall),
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
