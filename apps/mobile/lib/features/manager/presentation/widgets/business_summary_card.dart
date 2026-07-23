import 'package:flutter/material.dart';

class BusinessSummaryCard extends StatelessWidget {
  final String businessName;
  final String description;
  final String value;
  final IconData icon;
  final Color? iconColor;

  const BusinessSummaryCard({
    super.key,
    required this.businessName,
    required this.description,
    required this.value,
    required this.icon,
    this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final effectiveIconColor = iconColor ?? colors.primary;

    return Card(
      elevation: 0,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

      child: Padding(
        padding: const EdgeInsets.all(18),

        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Container(
              width: 56,
              height: 56,

              decoration: BoxDecoration(
                color: effectiveIconColor.withValues(alpha: 0.12),

                borderRadius: BorderRadius.circular(16),
              ),

              child: Icon(icon, size: 28, color: effectiveIconColor),
            ),

            const SizedBox(width: 16),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Text(
                    businessName,

                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 4),

                  Text(
                    description,

                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,

                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: colors.onSurfaceVariant,
                    ),
                  ),

                  const SizedBox(height: 10),

                  Text(
                    value,

                    style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
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
